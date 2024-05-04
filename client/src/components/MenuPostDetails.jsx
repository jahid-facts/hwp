import React, { useState, useEffect } from "react";
import LeftHomePage from "./mainHomePage/LeftHomePage";
import { useParams } from "react-router-dom";
import shottho_jit_img from "../assets/shottho_jit_img.gif";
import shasheen_img from "../assets/shasheen_img.gif";
import samuel_img from "../assets/samuel_img.jpg";
import montosh_img from "../assets/montosh_img.gif";
import delower_img from "../assets/delower_img.gif";
import axios from "axios";
import imgUrl from "../imgUrl";
import DomDaines from "../assets/DomDaines.png";
import PageVisitorSection from "./utils/page_visitor_section";

const MenuPostDetails = () => {
  const [data, setData] = useState({});

  const { id } = useParams();
  useEffect(() => {
    axios.get(`mega-menu/${id}`).then((res) => {
      setData(res.data);
    });
  }, [id]);

  if (!data) {
    return <div>Loading...</div>;
  }

  return (
    <div className="container pt-3">
      <div className="row g-3">
        <div className="col-md-9">
          <PageVisitorSection />
          <div className="geo__familarity">
            <h6 className="geo__familarity__title">{data.title}</h6>
          </div>
          <div className="mt-2">
            <div dangerouslySetInnerHTML={{ __html: data?.content }}></div>
          </div>
          {data?.ex_forces?.length > 0 && (
            <div className="cleafix mt-3">
              <div className="dig__details">
                <h6 className="dig__details__title">সাবেক {data?.title}</h6>
              </div>
              <div className="row g-3 mb-3 pt-2">
                {data?.ex_forces?.map((item, index) => {
                  return (
                    <div className="col-md-3" key={index}>
                      <div className="cheif__sp__card">
                        <div className="card">
                          <div className="card__cheif__sp pt-3">
                            <img
                              src={
                                item.image
                                  ? `${imgUrl}/${item.image}`
                                  : DomDaines
                              }
                              className="card-img-top"
                              alt="..."
                              loading="lazy"
                            />
                          </div>
                          <div className="card-body">
                            <h6 className="cheif__sp__card__title">
                              {item.name}
                            </h6>
                            <p className="cheif__sp__card__desc">
                              {item.designation}
                            </p>
                            <p className="cheif__sp__card__desc">
                              {item.from_date} to {item.to_date}
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          )}
        </div>
        <div className="col-md-3">
          <LeftHomePage />
        </div>
      </div>
    </div>
  );
};

export default MenuPostDetails;
