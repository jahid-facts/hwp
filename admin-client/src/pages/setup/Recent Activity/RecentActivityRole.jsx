import MaterialTable from "material-table";
import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import Modal from "react-modal";
import Swal from "sweetalert2";
import http from "../../../http.js";
import moment from "moment";
import { useContext } from "react";
import { RoleContext } from "../../../navbar/Auth.js";
import useGPSLocation from "../../../components/find_location.jsx";
import AuthUser from "../../../components/AuthUser.js";

export default function RecentActivityRole() {
  const { location } = useGPSLocation();
  const userRole = useContext(RoleContext);
  const authUser = AuthUser().user;

  const { home_page, activity } = userRole;
  const addActivity = () => {
    setIsOpen(true);
  };
  const deleteRowData = (id) => {
    Swal.fire({
      title: "Are you sure?",
      text: "You won't be able to revert this!",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Yes, delete it!",
    }).then((result) => {
      if (result.isConfirmed) {
        http.delete(`delete-recent-activity/${id}`).then((res) => {
          setUpdate(!update);
          setIsOpen(false);
          Swal.fire({
            position: "top-center",
            icon: "success",
            title: "Success !",
            text: "Banner Deleted Successfully",
            showConfirmButton: false,
            timer: 1500,
          });
        });
      }
    });
  };
  const editData = (id) => {
    http
      .get(`recent-activity/${id}`)
      .then((res) => {
        setActivityData({ ...res.data, date: moment().format("YYYY-MM-DD") });
        setIsOpen(true);
      })
      .catch((err) => {
        console.log(err);
      });
  };
  const columns = [
    {
      title: "SL",
      field: "",
      render: (row) => <div>{row.tableData.id + 1}</div>,
      width: "20 !important",
      cellStyle: {
        textAlign: "center",
      },
    },

    {
      title: "Heading",
      field: `heading`,
      cellStyle: {
        textAlign: "center",
      },
    },
    {
      title: "Content",
      field: `content`,
      cellStyle: {
        textAlign: "center",
      },
    },
    {
      title: "Image",
      field: `image`,
      render: (row) => (
        <img
          src={`${global.img_Url}/${row.image}`}
          style={{ height: "100px", maxWidth: "600px" }}
          className="img-fluid"
          alt="test"
        />
      ),
      cellStyle: {
        textAlign: "center",
      },
    },

    {
      title: "Action",
      field: "patient",
      render: (row) => (
        <div>
          {activity.includes("Edit Activity") && (
            <button
              onClick={() => editData(row.id)}
              className="btn btn-sm action-btn"
            >
              <i className="far fa-edit"></i>
            </button>
          )}
          {activity.includes("Delete Activity") && (
            <button
              onClick={() => deleteRowData(row.id)}
              className="btn btn-sm action-btn"
            >
              <i className="far fa-trash"></i>
            </button>
          )}
        </div>
      ),
      cellStyle: {
        textAlign: "center",
      },
    },
  ];
  const [data, setData] = useState([]);
  const [update, setUpdate] = useState(false);
  const [spinner, setSpinner] = useState(false);
  useEffect(() => {
    const controller = new AbortController();
    setSpinner(true);
    http
      .get(`recent-activity-user/${authUser.id}`)
      .then((res) => {
        setData(res.data);
        setSpinner(false);
      })
      .catch((err) => {
        console.log(err);
      });

    return () => {
      controller.abort();
    };
  }, [update]);
  // add modal
  const customStyles = {
    content: {
      top: "45%",
      left: "60%",
      // right: 'auto',
      bottom: "auto",
      marginRight: "-50%",
      transform: "translate(-50%, -50%)",
      maxHeight: "90%",
      width: "72%",
      height: "400px",
      padding: "10px",
    },
  };
  const [modalIsOpen, setIsOpen] = useState(false);
  const [activityData, setActivityData] = useState({
    image: "",
    heading: "",
    content: "",
  });
  const handleChange = (e) => {
    setActivityData({ ...activityData, [e.target.name]: e.target.value });
  };
  const submitData = (e) => {
    e.preventDefault();
    const formData = new FormData();
    formData.append("image", activityData.image);
    formData.append("heading", activityData.heading);
    formData.append("content", activityData.content);
    formData.append("latitude", location?.latitude);
    formData.append("longitude", location?.longitude);
    formData.append("userId", authUser.id);
    if (activityData.id) {
      http
        .put(`update-recent-activity/${activityData.id}`, formData)
        .then((res) => {
          setUpdate(!update);
          setIsOpen(false);
          setActivityData({ image: "", heading: "", content: "" });
          Swal.fire({
            position: "top-center",
            icon: "success",
            title: "Success !",
            text: "Data Updated Successfully",
            showConfirmButton: false,
            timer: 1500,
          });
        })
        .catch((err) => {
          console.log(err);
          Swal.fire({
            position: "top-center",
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
            showConfirmButton: false,
            timer: 1500,
          });
        });
    } else {
      http
        .post("save-recent-activity", formData)
        .then((res) => {
          setUpdate(!update);
          setIsOpen(false);
          setActivityData({ image: "", heading: "", content: "" });
          Swal.fire({
            position: "top-center",
            icon: "success",
            title: "Success !",
            text: "Data Added Successfully",
            showConfirmButton: false,
            timer: 1500,
          });
        })
        .catch((err) => {
          console.log(err);
          Swal.fire({
            position: "top-center",
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
            showConfirmButton: false,
            timer: 1500,
          });
        });
    }
  };
  const closeModal = () => {
    setIsOpen(false);
    setActivityData({ image: "", heading: "", content: "" });
  };

  const openMap = (lat, long) => {
    const url = `https://www.google.com/maps?q=${lat},${long}`;
    window.open(url, "_blank");
  };

  console.log(
    home_page.includes("Add Home"),
    activity.includes("Add Activity")
  );
  return (
    <div className="page-content adjustment-type-table">
      <div className="custom-card p-2 d-flex justify-content-between mb-2 align-items-center">
        <h6>Recent Activity</h6>
        {activity.includes("Add Activity") && (
          <div>
            <button
              style={{ marginTop: "1px" }}
              onClick={addActivity}
              className="btn btn-sm btn-primary float-end"
            >
              Add Page
            </button>
          </div>
        )}
        
      </div>

      <MaterialTable
        columns={columns}
        data={data}
        isLoading={spinner}
        options={{
          search: true,
          showTitle: false,
          searchFieldAlignment: "left",
          pageSize: 10,
          emptyRowsWhenPaging: false,
          pageSizeOptions: [5, 10, 20, 50, 100],
        }}
      />

      <Modal
        isOpen={modalIsOpen}
        onRequestClose={closeModal}
        style={customStyles}
        contentLabel="Example Modal"
      >
        <div className="product_modal">
          <div className="page-content">
            <div className=" patients-head ">
              <h5 className="fw-normal custom_py-3 px-2  text-start mb-2 card-name">
                Add Activity
                <span
                  style={{ cursor: "pointer", fontSize: "16px" }}
                  onClick={closeModal}
                  className="float-end"
                >
                  <i className="fal fa-times"></i>
                </span>
              </h5>
            </div>

            <div className=" p-3">
              <form onSubmit={submitData}>
                {/* <input onChange={handleChange} name='name' value={activityData.name} type="text" className="form-control form-control-sm my-2" required placeholder="News" /> */}
                <textarea
                  required
                  className="form-control form-control-sm my-2"
                  value={activityData.heading}
                  name="heading"
                  onChange={handleChange}
                  id=""
                  cols="30"
                  rows="3"
                  placeholder="Description"
                ></textarea>
                {activityData.id ? (
                  <input
                    className="form-control form-control-sm my-2"
                    name="image"
                    onChange={(e) =>
                      setActivityData({
                        ...activityData,
                        image: e.target.files[0],
                      })
                    }
                    type="file"
                    accept="image/*"
                  />
                ) : (
                  <input
                    required
                    className="form-control form-control-sm my-2"
                    name="image"
                    onChange={(e) =>
                      setActivityData({
                        ...activityData,
                        image: e.target.files[0],
                      })
                    }
                    type="file"
                    accept="image/*"
                  />
                )}
                <textarea
                  required
                  className="form-control form-control-sm my-2"
                  value={activityData.content}
                  name="content"
                  onChange={handleChange}
                  id=""
                  cols="30"
                  rows="5"
                  placeholder="Description"
                ></textarea>
                <button
                  className="btn mt-2 btn-sm btn-success float-end text-uppercase"
                  type="submit"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="16"
                    height="16"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="feather feather-save mb-1"
                  >
                    <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                    <polyline points="17 21 17 13 7 13 7 21"></polyline>
                    <polyline points="7 3 7 8 15 8"></polyline>
                  </svg>{" "}
                  Save
                </button>
              </form>
            </div>
          </div>
        </div>
      </Modal>
    </div>
  );
}
