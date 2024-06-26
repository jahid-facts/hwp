import MaterialTable from "material-table";
import React, { useRef } from "react";
import { useEffect } from "react";
import { useState } from "react";
import Modal from "react-modal";
import Swal from "sweetalert2";
import http from "../../../http";
import JoditEditor from "jodit-react";
import moment from "moment";
import { useContext } from "react";
import { RoleContext } from "../../../navbar/Auth";
export default function MegaMenu() {
  const userRole = useContext(RoleContext);
  const { administration } = userRole;
  const addPage = () => {
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
        http.delete(`mega-menu/${id}`).then((res) => {
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
      .get(`mega-menu/${id}`)
      .then((res) => {
        setCategoryData(res.data);
        setContent(res.data.content);
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
      title: "Parent",
      field: `parent`,
      render: (row) => (
        <div>{row?.parent?.name ? row?.parent?.name : "Parent"}</div>
      ),
      cellStyle: {
        textAlign: "center",
      },
    },
    {
      title: "Title",
      field: `title`,
      render: (row) => <div>{row?.name}</div>,
      cellStyle: {
        textAlign: "center",
      },
    },
    {
      title: "Grid Column",
      field: `grid_col`,
      render: (row) => <div>{row?.grid_col?.parent !== null ? row?.grid_col : ""}</div>,
      cellStyle: {
        textAlign: "center",
      },
    },
    {
      title: "Index",
      field: `index`,
      cellStyle: {
        textAlign: "center",
      },
    },
    {
      title: "Date",
      field: `title`,
      render: (row) => <div>{moment(row?.updatedAt).format("DD-MM-YYYY")}</div>,
      cellStyle: {
        textAlign: "center",
      },
    },

    {
      title: "Action",
      field: "patient",
      render: (row) => (
        <div>
          {administration.includes("Edit Menu Section") && (
            <button
              onClick={() => editData(row.id)}
              className="btn btn-sm action-btn"
            >
              <i className="far fa-edit"></i>
            </button>
          )}
          {administration.includes("Delete Menu Section") && (
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
      .get(`mega-menu`)
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
      top: "55%",
      left: "58%",
      // right: 'auto',
      // bottom: 'auto',
      marginRight: "-50%",
      transform: "translate(-50%, -50%)",
      maxHeight: "90%",
      width: "76%",
      height: "480px",
      padding: "10px",
    },
  };
  const [modalIsOpen, setIsOpen] = useState(false);
  const [categoryData, setCategoryData] = useState({
    content: "",
    parent_id: "",
    name: "",
    link: "",
    color: "",
    grid_col: "",
    index: "",
  });
  // text editor
  const editor = useRef(null);
  const [content, setContent] = useState("");

  const config = {
    readonly: false, // all options from https://xdsoft.net/jodit/doc/,
    placeholder: "Start typings...",
    uploader: {
      insertImageAsBase64URI: true,
    },
    removeButtons: [
      "fullsize",
      "about",
      "outdent",
      "indent",
      "video",
      "print",
      "superscript",
      "subscript",
      "file",
      "cut",
      "selectall",
    ],
  };

  // text editor
  const handleChange = (e) => {
    setCategoryData({ ...categoryData, [e.target.name]: e.target.value });
  };
  const submitData = (e) => {
    e.preventDefault();
    const formData = {
      content: content,
      parent_id: categoryData?.parent_id
        ? Number(categoryData?.parent_id)
        : null,
      name: categoryData?.name,
      link: categoryData?.link,
      color: categoryData?.color,
      grid_col: Number(categoryData?.grid_col),
      index: Number(categoryData?.index),
    };

    if (categoryData.id) {
      http
        .put(`mega-menu/${categoryData.id}`, formData)
        .then((res) => {
          setUpdate(!update);
          setIsOpen(false);
          setCategoryData({
            content: "",
            parent_id: "",
            name: "",
            link: "",
            color: "",
            grid_col: "",
            index: "",
          });
          setContent("");
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
        .post("mega-menu", formData)
        .then((res) => {
          setUpdate(!update);
          setIsOpen(false);
          setContent("");
          setCategoryData({
            content: "",
            parent_id: "",
            name: "",
            link: "",
            color: "",
            grid_col: "",
            index: "",
          });
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
    setContent("");
    setIsOpen(false);
    setCategoryData({
      content: "",
      parent_id: "",
      name: "",
      link: "",
      color: "",
      grid_col: "",
      index: "",
    });
  };
  return (
    <div className="page-content adjustment-type-table">
      <div className="custom-card p-2 d-flex justify-content-between mb-2 align-items-center">
        <h6>Mega Menu Pages</h6>
        {administration.includes("Add Menu Section") && (
          <div>
            <button
              style={{ marginTop: "1px" }}
              onClick={addPage}
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
                {categoryData.id ? "Updated" : "Add"} Page
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
                <select
                  name="parent_id"
                  onChange={handleChange}
                  value={categoryData?.parent_id}
                  className="form-control form-control-sm my-2"
                >
                  <option value="">Select Parent</option>
                  {data.map((item, index) => {
                    return (
                      <option key={index} value={item.id}>
                        {item.name}
                      </option>
                    );
                  })}
                </select>
                <input
                  onChange={handleChange}
                  value={categoryData.name}
                  name="name"
                  type="text"
                  className="form-control form-control-sm my-2"
                  required
                  placeholder="name"
                />
                <input
                  onChange={handleChange}
                  value={categoryData.link}
                  name="link"
                  type="text"
                  className="form-control form-control-sm my-2"
                  required
                  placeholder="link"
                />
                <input
                  onChange={handleChange}
                  value={categoryData.grid_col}
                  name="grid_col"
                  type="number"
                  className="form-control form-control-sm my-2"
                  required
                  placeholder="column"
                />
                <input
                  onChange={handleChange}
                  value={categoryData.color}
                  name="color"
                  type="color"
                  className="form-control form-control-sm my-2"
                  required
                  placeholder="color"
                />
                {/* <textarea required className="form-control form-control-sm my-2" value={categoryData.title} name="title" onChange={handleChange} id="" cols="30" rows="3" placeholder="Description"></textarea> */}
                <select
                  name="index"
                  required
                  onChange={handleChange}
                  value={categoryData.index}
                  className="form-control form-control-sm my-2"
                >
                  <option value="">Select Index</option>
                  {data.map((item, index) => {
                    return (
                      <option key={index} value={index + 1}>
                        {index + 1}
                      </option>
                    );
                  })}
                  {categoryData?.id ? (
                    <></>
                  ) : (
                    <option value={data?.length + 1}>{data?.length + 1}</option>
                  )}
                </select>

                <JoditEditor
                  ref={editor}
                  value={content}
                  config={config}
                  tabIndex={1} // tabIndex of textarea
                  onBlur={(newContent) => setContent(newContent)} // preferred to use only this option to update the content for performance reasons
                  // onChange={(newContent) => { console.log(newContent) }}
                />

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
