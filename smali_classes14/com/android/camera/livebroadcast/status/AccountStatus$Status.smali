.class public Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
.super Ljava/lang/Object;
.source "AccountStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/status/AccountStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mLikeCount:I

.field private mPreReactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Reactions;",
            ">;"
        }
    .end annotation
.end field

.field private mReactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Reactions;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mPreReactions:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addComment(Lcom/android/camera/livebroadcast/status/Comment;)V
    .locals 1
    .param p1, "comment"    # Lcom/android/camera/livebroadcast/status/Comment;

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReactions(Lcom/android/camera/livebroadcast/status/Reactions;)V
    .locals 4
    .param p1, "reactions"    # Lcom/android/camera/livebroadcast/status/Reactions;

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "isContained":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/Reactions;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/status/Reactions;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    const/4 v1, 0x1

    .line 48
    :cond_0
    if-nez v1, :cond_1

    .line 49
    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    monitor-exit p0

    .line 51
    return-void

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearComments()V
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearReactions()V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mPreReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copy()Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    .locals 6

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    new-instance v3, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v3}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    .line 56
    .local v3, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 57
    iget-object v4, v3, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "isContained":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mPreReactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/status/Reactions;->getID()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mPreReactions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/status/Reactions;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    const/4 v1, 0x1

    .line 67
    :cond_1
    if-nez v1, :cond_2

    .line 68
    iget-object v4, v3, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mPreReactions:Ljava/util/List;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 72
    .end local v1    # "isContained":Z
    .end local v2    # "j":I
    :cond_4
    iget v4, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mViewCount:I

    iput v4, v3, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mViewCount:I

    .line 73
    monitor-exit p0

    return-object v3

    .line 74
    .end local v0    # "i":I
    .end local v3    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mComments:Ljava/util/List;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mLikeCount:I

    return v0
.end method

.method public getReactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Reactions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mReactions:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mViewCount:I

    return v0
.end method

.method public setLikeCount(I)V
    .locals 1
    .param p1, "likeCount"    # I

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iput p1, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mLikeCount:I

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setViewCount(I)V
    .locals 1
    .param p1, "viewCount"    # I

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iput p1, p0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->mViewCount:I

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
