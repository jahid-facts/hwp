import React from "react";
import { usePageVisitor } from "../usePageVisitor";

const PageVisitorSection = () => {
  const pageVisitor = usePageVisitor();
  return (
    <div style={{ padding: "5px", background: "#f1f1f1" }}>
      <div
        style={{
          gap: "15px",
          display: "flex",
          justifyContent: "space-between",
        }}
      >
        <p style={{ margin: 0, fontSize: "14px", fontWeight: "400" }}>
          Today Visitors: {pageVisitor?.today_visits}
        </p>
        <p style={{ margin: 0, fontSize: "14px", fontWeight: "400" }}>
          Total Visitors: {pageVisitor?.total_visits}
        </p>
      </div>
    </div>
  );
};

export default PageVisitorSection;
