.class public Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$SuperChatEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/SuperChatEventListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "superChatEvents"


# instance fields
.field private hl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$SuperChatEvents;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$SuperChatEvents;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 13615
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->this$1:Lcom/google/api/services/youtube/YouTube$SuperChatEvents;

    .line 13616
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "superChatEvents"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/SuperChatEventListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13617
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->part:Ljava/lang/String;

    .line 13618
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13627
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13622
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13710
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 13739
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13764
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13676
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13779
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13632
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13637
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setHl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .prologue
    .line 13724
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->hl:Ljava/lang/String;

    .line 13725
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13642
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .prologue
    .line 13747
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->maxResults:Ljava/lang/Long;

    .line 13748
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13647
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .prologue
    .line 13773
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->pageToken:Ljava/lang/String;

    .line 13774
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .prologue
    .line 13684
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->part:Ljava/lang/String;

    .line 13685
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13652
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13657
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 1

    .prologue
    .line 13662
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13597
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object v0

    return-object v0
.end method
