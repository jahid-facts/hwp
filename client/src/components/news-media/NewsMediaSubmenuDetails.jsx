import { useEffect, useState } from "react";
import { useParams, Link } from "react-router-dom";
import LeftHomePage from "../mainHomePage/LeftHomePage";
import axios from "axios";
import PageVisitorSection from "../utils/page_visitor_section";
import imgUrl from "../../imgUrl";
import "./post_card.css";
import { formatDate } from "../utils/dateTime";
import { shortenedText } from "../utils/shortenedText";

const NewsMediaSubmenuDetails = () => {
  const [servicesData, setServicesData] = useState([]);
  const { id } = useParams();

  useEffect(() => {
    axios.get(`news-sub-pages-post-by-pageId/${id}`).then((res) => {
      setServicesData(res.data);
    });
  }, [id]);

  return (
    <div className="container py-3">
      <div className="row g-3">
        <div className="col-md-9">
          <PageVisitorSection />
          {servicesData.length === 0 ? (
            <p>No data found</p>
          ) : (
            <div className="row">
              {servicesData.map((item, i) => (
                <div className="col-md-4" key={i}>
                  <Link to={`/post-sub-page-details/${item.id}`}>
                    <div className="p-2 rounded post_card">
                      <div className="geo__familarity__img">
                        <img src={`${imgUrl}/${item?.file}`} alt="" />
                      </div>
                      <div>
                        <h6>{formatDate(item?.createdAt)}</h6>
                        <h6>{shortenedText(item?.title, 45)}</h6>
                      </div>
                    </div>
                  </Link>
                </div>
              ))}
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

export default NewsMediaSubmenuDetails;
