import { useEffect, useState, useMemo } from "react";
import axios from "axios";
import { useLocation } from "react-router-dom";

export const usePageVisitor = () => {
  const { pathname } = useLocation(); // Destructure pathname directly from useLocation
  const cleanedPathname = useMemo(
    () => pathname.replace(/\/(en|bn)\b/, ""),
    [pathname]
  );
  const serverPath = useMemo(
    () => cleanedPathname.replace(/\//g, ""),
    [cleanedPathname]
  );
  const [pageVisitor, setPageVisitor] = useState({});

  const path = serverPath ? serverPath : "home";


  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(`/visit/${path}`);
        setPageVisitor(response.data);
      } catch (error) {
        console.error("Error fetching visit statistics:", error);
      }
    };

    fetchData();
  }, [serverPath]);

  return useMemo(() => pageVisitor, [pageVisitor]);
};
