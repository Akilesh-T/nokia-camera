.class public Lcom/android/camera/livebroadcast/status/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/status/Comment$CommentType;
    }
.end annotation


# instance fields
.field private mCommentType:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

.field private mDialogue:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mThumbnailURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/status/Comment$CommentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "commentType"    # Lcom/android/camera/livebroadcast/status/Comment$CommentType;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "dialogue"    # Ljava/lang/String;
    .param p5, "thumbnailURL"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/Comment;->mCommentType:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    .line 26
    iput-object p2, p0, Lcom/android/camera/livebroadcast/status/Comment;->mID:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/camera/livebroadcast/status/Comment;->mName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/android/camera/livebroadcast/status/Comment;->mDialogue:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/android/camera/livebroadcast/status/Comment;->mThumbnailURL:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dialogue"    # Ljava/lang/String;
    .param p4, "thumbnailURL"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NORMAL:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/Comment;->mCommentType:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    .line 18
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/Comment;->mID:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/android/camera/livebroadcast/status/Comment;->mName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/android/camera/livebroadcast/status/Comment;->mDialogue:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/android/camera/livebroadcast/status/Comment;->mThumbnailURL:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static generateSampleList(I)Ljava/util/List;
    .locals 6
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 55
    new-instance v0, Lcom/android/camera/livebroadcast/status/Comment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No Comment."

    invoke-direct {v0, v5, v3, v4, v5}, Lcom/android/camera/livebroadcast/status/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "comment":Lcom/android/camera/livebroadcast/status/Comment;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getCommentType()Lcom/android/camera/livebroadcast/status/Comment$CommentType;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Comment;->mCommentType:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    return-object v0
.end method

.method public getDialogue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Comment;->mDialogue:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Comment;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Comment;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Comment;->mThumbnailURL:Ljava/lang/String;

    return-object v0
.end method
