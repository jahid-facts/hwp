import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import LeftHomePage from "../mainHomePage/LeftHomePage";
import axios from "axios";
import PageVisitorSection from "../utils/page_visitor_section";
import imgUrl from "../../imgUrl";

const PostSubPageDetails = () => {
  const [newsMediaData, setNewsMediaData] = useState({});

  const { id } = useParams();
  useEffect(() => {
    axios.get(`news-sub-pages-post/${id}`).then((res) => {
      setNewsMediaData(res.data);
    });
  }, [id]);

  return (
    <div className="container py-3">
      <div className="row g-3">
        <div className="col-md-9">
          <PageVisitorSection />
          <>
            <div className="geo__familarity">
              <h6 className="geo__familarity__title">{newsMediaData?.title}</h6>
            </div>
            <div className="geo__familarity__img my-2">
              <img src={`${imgUrl}/${newsMediaData?.file}`} alt="" />
            </div>
            <div dangerouslySetInnerHTML={{ __html: newsMediaData?.content }}></div>
          </>
        </div>
        <div className="col-md-3">
          <LeftHomePage />
        </div>
      </div>
    </div>
  );
};

export default PostSubPageDetails;
