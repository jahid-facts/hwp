import { useEffect, useState } from "react";
import LeftHomePage from "../mainHomePage/LeftHomePage";
import { Link } from "react-router-dom";
import Swal from "sweetalert2";
import axios from "axios";
import PageVisitorSection from "../utils/page_visitor_section";
import "./main_contact.css";

const MapKishorganj = () => {
  const [data, setData] = useState({
    name: "",
    email: "",
    office: "",
    message: "",
    subject: "",
  });
  const handleChange = (e) => {
    const { name, value } = e.target;
    setData({
      ...data,
      [name]: value,
    });
  };
  const [loading, setLoading] = useState(false);
  const handleSubmit = (e) => {
    e.preventDefault();
    setLoading(true);
    axios
      .post("/send-email", data)
      .then((res) => {
        setLoading(false);
        Swal.fire("Your message has been sent successfully!", "", "success");
      })
      .catch((err) => {
        console.log(err);
        setLoading(false);
      });
  };
  const [info, setInfo] = useState({});
  const [contactPerson, setContactPerson] = useState([]);
  useEffect(() => {
    axios.get(`contact-address`).then((res) => {
      setInfo(res.data);
    });
    axios.get(`contact-person`).then((res) => {
      setContactPerson(res.data);
    });
  }, []);
  return (
    <div className="container">
      <div className="row g-3 main_contact">
        <div className="col-md-6">
          <PageVisitorSection />
          <p
            className=""
            style={{
              paddingBottom: "12px",
              borderBottom: "1px solid #dcdcdc",
            }}
          ></p>
          <div className=" contact">
            <h6 className="heading">ঠিকানা</h6>
            <p
              className=""
              style={{
                marginBottom: "12px",
                paddingBottom: "12px",
                borderBottom: "1px solid #dcdcdc",
              }}
            >
              {info?.office}
            </p>
            <p className="geo__familarity__desc">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="1em"
                height="1em"
                viewBox="0 0 256 256"
              >
                <path
                  fill="currentColor"
                  d="m222.37 158.46l-47.11-21.11l-.13-.06a16 16 0 0 0-15.17 1.4a8.12 8.12 0 0 0-.75.56L134.87 160c-15.42-7.49-31.34-23.29-38.83-38.51l20.78-24.71c.2-.25.39-.5.57-.77a16 16 0 0 0 1.32-15.06v-.12L97.54 33.64a16 16 0 0 0-16.62-9.52A56.26 56.26 0 0 0 32 80c0 79.4 64.6 144 144 144a56.26 56.26 0 0 0 55.88-48.92a16 16 0 0 0-9.51-16.62M176 208A128.14 128.14 0 0 1 48 80a40.2 40.2 0 0 1 34.87-40a.61.61 0 0 0 0 .12l21 47l-20.67 24.74a6.13 6.13 0 0 0-.57.77a16 16 0 0 0-1 15.7c9.06 18.53 27.73 37.06 46.46 46.11a16 16 0 0 0 15.75-1.14a8.44 8.44 0 0 0 .74-.56L168.89 152l47 21.05h.11A40.21 40.21 0 0 1 176 208"
                />
              </svg>{" "}
              {info?.phone}
            </p>
            <p className="geo__familarity__desc">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="1em"
                height="1em"
                viewBox="0 0 24 24"
              >
                <g fill="none" fill-rule="evenodd">
                  <path d="M24 0v24H0V0zM12.594 23.258l-.012.002l-.071.035l-.02.004l-.014-.004l-.071-.036c-.01-.003-.019 0-.024.006l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.016-.018m.264-.113l-.014.002l-.184.093l-.01.01l-.003.011l.018.43l.005.012l.008.008l.201.092c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.003-.011l.018-.43l-.003-.012l-.01-.01z" />
                  <path
                    fill="currentColor"
                    d="M7 3a2 2 0 0 1 1.742 1.016C8.826 4.007 8.912 4 9 4h10a2 2 0 0 1 2 2v13a2 2 0 0 1-2 2H9a1.99 1.99 0 0 1-1-.268A1.99 1.99 0 0 1 7 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2zm12 3H9v13h10zM7 5H5v14h2zm5 11a1 1 0 0 1 .993.883l.007.127a1 1 0 0 1-1.993.117L11 17a1 1 0 0 1 1-1m4 0a1 1 0 0 1 .993.883l.007.127a1 1 0 0 1-1.993.117L15 17a1 1 0 0 1 1-1m-4-3a1 1 0 0 1 .993.883l.007.127a1 1 0 0 1-1.993.117L11 14a1 1 0 0 1 1-1m4 0a1 1 0 0 1 .993.883l.007.127a1 1 0 0 1-1.993.117L15 14a1 1 0 0 1 1-1m.5-6a1.5 1.5 0 0 1 1.493 1.356L18 8.5v2a1.5 1.5 0 0 1-1.356 1.493L16.5 12h-5a1.5 1.5 0 0 1-1.493-1.356L10 10.5v-2a1.5 1.5 0 0 1 1.356-1.493L11.5 7zM16 9h-4v1h4z"
                  />
                </g>
              </svg>{" "}
              {info?.phone}
            </p>
            <p className="geo__familarity__desc">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="1em"
                height="1em"
                viewBox="0 0 24 24"
              >
                <path
                  fill="currentColor"
                  d="M15.75 2A2.25 2.25 0 0 1 18 4.25v15.5A2.25 2.25 0 0 1 15.75 22h-7.5A2.25 2.25 0 0 1 6 19.75V4.25A2.25 2.25 0 0 1 8.25 2zm0 1.5h-7.5a.75.75 0 0 0-.75.75v15.5c0 .414.336.75.75.75h7.5a.75.75 0 0 0 .75-.75V4.25a.75.75 0 0 0-.75-.75m-2.501 14a.75.75 0 0 1 .002 1.5l-2.5.004a.75.75 0 0 1-.002-1.5z"
                />
              </svg>{" "}
              {info?.mobile}
            </p>
            <p className="geo__familarity__desc">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="1em"
                height="1em"
                viewBox="0 0 32 32"
              >
                <path
                  fill="currentColor"
                  d="M28 6H4a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h24a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2m-2.2 2L16 14.78L6.2 8ZM4 24V8.91l11.43 7.91a1 1 0 0 0 1.14 0L28 8.91V24Z"
                />
              </svg>{" "}
              {info?.email}
            </p>
          </div>
        </div>
        <div className="col-md-6">
          <div className="app__form__row">
            <div className="contact_form">
              <h6 className="heading">যোগাযোগ</h6>
              <p className="py-2">
                Or, you can just send an email: {info?.email}{" "}
              </p>
              <form
                onSubmit={handleSubmit}
                className="row g-2 mb-3 d-flex justify-content-center"
              >
                <div className="col-md-12">
                  <select
                    name="office"
                    onChange={handleChange}
                    id="inputState"
                    className="form-control"
                  >
                    <option selected>Select...</option>
                    {contactPerson?.map((item, id) => (
                      <option key={id} value={item.email}>
                        {item.name}
                      </option>
                    ))}
                  </select>
                </div>
                <div className="col-md-12">
                  <input
                    required
                    onChange={handleChange}
                    name="name"
                    type="text"
                    className="form-control"
                    placeholder="Enter your name"
                  />
                </div>
                <div className="col-md-12">
                  <input
                    required
                    onChange={handleChange}
                    name="email"
                    type="email"
                    className="form-control"
                    placeholder="Enter your email"
                  />
                </div>
                <div className="col-md-12">
                  <input
                    required
                    onChange={handleChange}
                    name="subject"
                    type="text"
                    className="form-control"
                    placeholder="Enter your subject"
                  />
                </div>
                <div className="col-md-12">
                  <textarea
                    required
                    onChange={handleChange}
                    name="message"
                    className="form-control"
                    placeholder="write your messages ..."
                    rows="3"
                  ></textarea>
                </div>

                <div className="col-md-12">
                  <div className="text-center pt-3">
                    <input
                    style={{width:"100%"}}
                      type="submit"
                      disabled={loading}
                      value="SEND NOW"
                      className="btn__send__msg"
                    />
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div className="col-md-12">
          {info?.map && (
            <div className="contact_map">
              <iframe
                src={info?.map}
                width="100%"
                height="320"
                style={{ border: "0", borderRadius: "10px" }}
                allowFullScreen=""
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"
              ></iframe>
            </div>
          )}
        </div>
        {/* <div className="col-md-3">
          <LeftHomePage />
        </div> */}
      </div>
    </div>
  );
};

export default MapKishorganj;
