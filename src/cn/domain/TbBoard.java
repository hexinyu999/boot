package cn.domain;

import java.util.Date;

public class TbBoard {
    private Integer id;

    private String boardIssueName;

    private Date issueTime;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBoardIssueName() {
        return boardIssueName;
    }

    public void setBoardIssueName(String boardIssueName) {
        this.boardIssueName = boardIssueName == null ? null : boardIssueName.trim();
    }

    public Date getIssueTime() {
        return issueTime;
    }

    public void setIssueTime(Date issueTime) {
        this.issueTime = issueTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}