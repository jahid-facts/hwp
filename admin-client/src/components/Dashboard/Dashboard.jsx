import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import http from "../../http";
import axios from "axios";
import "./card.css";

export default function Dashboard() {
  const [users, setUsers] = useState(0);
  const [allNotice, setAllNotice] = useState([]);
  const [dashboard, setDashboard] = useState({});
  const [thana, setThana] = useState(0);
  const [bitOfficer, setBitOfficer] = useState(0);
  const [circle, setCircle] = useState(0);
  console.log(dashboard);
  useEffect(() => {
    http.get("users-length").then((res) => {
      setUsers(res.data.count);
    });
    http.get("notice-categories").then((res) => {
      setAllNotice(res.data);
    });
    http
      .get("dashboard")
      .then((response) => {
        setDashboard(response.data);
      })
      .catch((error) => {
        console.error("Error fetching user count:", error);
      });
    http.get("sub-units-thana").then((res) => {
      setThana(res.data);
    });
    http.get("bit-officers").then((res) => {
      setBitOfficer(res.data.length);
    });
    http.get("sub-units-circle").then((res) => {
      setCircle(res.data);
    });
  }, []);
  return (
    <div className="page-content">
      <div className="row">
        <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Total Users
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {users}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                >
                  <g fill="none" stroke="currentColor" stroke-width="1.5">
                    <circle cx="12" cy="6" r="4" />
                    <path d="M20 17.5c0 2.485 0 4.5-8 4.5s-8-2.015-8-4.5S7.582 13 12 13s8 2.015 8 4.5Z" />
                  </g>
                </svg>
              </div>
            </div>
          </div>
        </div>
        <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Circle Office
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {circle}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                >
                  <path
                    fill="none"
                    stroke="currentColor"
                    d="M24 6.5c-.329 0-.659.07-.937.245C21.5 7.733 21.5 9.08 21.5 10v.5H17m-8 3h15m-7.5 0V24m-4.5-.5c-1 0-1.75-1.5-1.75-1.5c-.75-1.5-.75-2.5-.75-4v-1.5h-8v-.25l1.922-7.495A3 3 0 0 1 6.328 6.5H7.5l1.447 2.894a2 2 0 0 0 1.79 1.106H15m-7.65-6s-1.6-1-1.6-2.25a1.747 1.747 0 1 1 3.496 0C9.246 3.5 7.65 4.5 7.65 4.5z"
                  />
                </svg>
              </div>
            </div>
          </div>
        </div>
        <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Thana
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {thana}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                >
                  <path
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    d="M16 14c2.374 1.183 4 3.65 4 7v2H4v-2c0-3.354 1.631-5.825 4-7m4 1c3.26 0 5.903-2.686 5.903-5.999c0-.702.218-1.375 0-2.001M6.093 7c-.21.615 0 1.313 0 2.001C6.093 12.314 8.738 15 12 15M6 8h12l3-4c-1.912-1.735-5.21-3-9-3c-3.836 0-7.168 1.296-9 3zm6-3a1 1 0 0 0 1-1h-2a1 1 0 0 0 1 1z"
                  />
                </svg>
              </div>
            </div>
          </div>
        </div>
        {/* <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Total Bit Policing
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {bitOfficer}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 32 32"
                >
                  <path fill="currentColor" d="M10 24h2v6h-2z" />
                  <path
                    fill="currentColor"
                    d="M21 20H7a3.003 3.003 0 0 1-3-3V6H2v11a5.006 5.006 0 0 0 5 5h14a4.9 4.9 0 0 1 2.105.481L17 28.586L18.414 30l6.307-6.307A4.96 4.96 0 0 1 26 27v3h2v-3a7.01 7.01 0 0 0-7-7"
                  />
                  <path
                    fill="currentColor"
                    d="m25.275 4.039l-7-2a1 1 0 0 0-.55 0l-7 2a1 1 0 0 0-.695 1.203L11 9.123V11a7 7 0 1 0 14 0V9.123l.97-3.88a1 1 0 0 0-.695-1.204M18 4.04l5.795 1.656L23.22 8H19V6h-2v2h-4.219l-.576-2.304ZM18 16a5.006 5.006 0 0 1-5-5v-1h10v1a5.006 5.006 0 0 1-5 5"
                  />
                </svg>
              </div>
            </div>
          </div>
        </div> */}
        {allNotice.map((item, i) => (
          <div className="col-md-3" key={i}>
            <div className="post_card p-3">
              <div className="d-flex justify-content-between align-items-center">
                <div>
                  <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                    {item?.title}
                  </span>
                  <div>
                    <span
                      className="ms-3"
                      style={{ fontSize: "30px", fontWeight: "700" }}
                    >
                      {item?.notices.length}
                    </span>
                  </div>
                </div>
                <div className="card_icon_box">
                  <svg
                    className="card_icon"
                    xmlns="http://www.w3.org/2000/svg"
                    width="1em"
                    height="1em"
                    viewBox="0 0 24 24"
                  >
                    <path
                      fill="currentColor"
                      fill-rule="evenodd"
                      d="M15 18v1a3 3 0 0 1-6 0v-1H5c-.55 0-1-.45-1-1s.45-1 1-1h1v-6a6.002 6.002 0 0 1 5-5.917V3a1 1 0 0 1 2 0v1.083c2.838.476 5 2.944 5 5.917v6h1c.55 0 1 .45 1 1s-.45 1-1 1zm-3 2a1 1 0 0 0 1-1v-1h-2v1a1 1 0 0 0 1 1m1-6v-2h2a1 1 0 0 0 0-2h-2V8a1 1 0 0 0-2 0v2H9a1 1 0 0 0 0 2h2v2a1 1 0 0 0 2 0"
                    />
                  </svg>
                </div>
              </div>
            </div>
          </div>
        ))}
        <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Photo Gallery
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {dashboard?.photoGallery}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                >
                  <g
                    fill="none"
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                  >
                    <path d="M15 8h.01M3 6a3 3 0 0 1 3-3h12a3 3 0 0 1 3 3v12a3 3 0 0 1-3 3H6a3 3 0 0 1-3-3z" />
                    <path d="m3 16l5-5c.928-.893 2.072-.893 3 0l5 5" />
                    <path d="m14 14l1-1c.928-.893 2.072-.893 3 0l3 3" />
                  </g>
                </svg>
              </div>
            </div>
          </div>
        </div>
        <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Video Gallery
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {dashboard?.videoGallery}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                >
                  <circle cx="7" cy="11" r="1" fill="currentColor" />
                  <path
                    fill="currentColor"
                    d="M21.585 7.188a.995.995 0 0 0-.901-.137l-1.707.568A3.004 3.004 0 0 0 16 4.999H5c-1.654 0-3 1.347-3 3v6c0 1.653 1.346 3 3 3h3v1.111l.008.09c.066.738.381 1.423.887 1.928c.562.562 1.311.872 2.104.872s1.542-.31 2.104-.87c.574-.577.898-1.346.896-2.113V17h2a3.01 3.01 0 0 0 2.978-2.62l1.707.568c.303.104.64.051.9-.138a.997.997 0 0 0 .415-.812v-6a1 1 0 0 0-.414-.81M12 18.023a.995.995 0 0 1-.309.689a.976.976 0 0 1-1.382 0a1.115 1.115 0 0 1-.309-.691V16h2zM17 14a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h11a1 1 0 0 1 1 1zm3-1.389s-1.895-.605-2-.605V9.994c.105 0 2-.605 2-.605z"
                  />
                </svg>
              </div>
            </div>
          </div>
        </div>
        <div className="col-md-3">
          <div className="post_card p-3">
            <div className="d-flex justify-content-between align-items-center">
              <div>
                <span style={{ fontSize: "15px", color: "#8A96A5" }}>
                  Recent Activity
                </span>
                <div>
                  <span
                    className="ms-3"
                    style={{ fontSize: "30px", fontWeight: "700" }}
                  >
                    {dashboard?.Recent_Activity}
                  </span>
                </div>
              </div>
              <div className="card_icon_box">
                <svg
                  className="card_icon"
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                >
                  <path
                    fill="currentColor"
                    d="m23 12l-2.44 2.78l.34 3.68l-3.61.82l-1.89 3.18L12 21l-3.4 1.47l-1.89-3.18l-3.61-.82l.34-3.69L1 12l2.44-2.79l-.34-3.68l3.61-.81L8.6 1.54L12 3l3.4-1.46l1.89 3.18l3.61.82l-.34 3.68zm-2.67 0L18.5 9.89l.24-2.79L16 6.5l-1.42-2.43L12 5.18L9.42 4.07L8 6.5l-2.74.59l.24 2.79L3.67 12l1.83 2.1l-.24 2.8l2.74.6l1.42 2.43L12 18.81l2.58 1.11L16 17.5l2.74-.61l-.24-2.79zM11 15h2v2h-2zm0-8h2v6h-2z"
                  />
                </svg>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
