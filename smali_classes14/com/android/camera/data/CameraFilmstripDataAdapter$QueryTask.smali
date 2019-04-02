.class Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_METADATA:I = 0x5


# instance fields
.field private final mDoneCallback:Lcom/android/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSecure:Z

.field private final mOnCreateTime:J

.field final synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/util/Callback;ZJ)V
    .locals 0
    .param p3, "isSecure"    # Z
    .param p4, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p2, "doneCallback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 446
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    .line 447
    iput-boolean p3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mIsSecure:Z

    .line 448
    iput-wide p4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mOnCreateTime:J

    .line 449
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;
    .locals 24
    .param p1, "contexts"    # [Landroid/content/Context;

    .prologue
    .line 461
    const/16 v19, 0x0

    aget-object v6, p1, v19

    .line 462
    .local v6, "context":Landroid/content/Context;
    new-instance v9, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v9}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    .line 464
    .local v9, "l":Lcom/android/camera/data/FilmstripItemList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mIsSecure:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mOnCreateTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/PhotoItemFactory;->queryAll(ZJ)Ljava/util/List;

    move-result-object v15

    .line 465
    .local v15, "photoData":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/PhotoItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mIsSecure:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mOnCreateTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/VideoItemFactory;->queryAll(ZJ)Ljava/util/List;

    move-result-object v17

    .line 467
    .local v17, "videoData":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/VideoItem;>;"
    const-wide/16 v10, -0x1

    .line 499
    .local v10, "lastMediaId":J
    const/4 v12, 0x0

    .line 500
    .local v12, "lastPhotoData":Lcom/android/camera/data/FilmstripItemData;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 501
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/PhotoItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/data/PhotoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v12

    .line 502
    if-eqz v12, :cond_0

    .line 503
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lastPhotoData : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    :cond_0
    const/4 v13, 0x0

    .line 507
    .local v13, "lastVideoData":Lcom/android/camera/data/FilmstripItemData;
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 508
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/VideoItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/data/VideoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v13

    .line 509
    if-eqz v13, :cond_1

    .line 510
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lastVideoData : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    :cond_1
    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    .line 515
    invoke-virtual {v12}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v20

    invoke-virtual {v13}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-lez v19, :cond_4

    .line 516
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/FilmstripItem;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    .line 543
    :cond_2
    :goto_0
    invoke-virtual {v9}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 544
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v10

    .line 548
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    invoke-virtual {v9}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 549
    invoke-virtual {v9, v8}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v7

    .line 550
    .local v7, "data":Lcom/android/camera/data/FilmstripItem;
    invoke-static {v6, v7}, Lcom/android/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 548
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 517
    .end local v7    # "data":Lcom/android/camera/data/FilmstripItem;
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v12}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v20

    invoke-virtual {v13}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_5

    .line 518
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/FilmstripItem;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 520
    :cond_5
    const v4, 0x5265c00

    .line 521
    .local v4, "MILLIS_IN_DAY":I
    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x5265c00

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 524
    .local v14, "now":Ljava/util/Date;
    invoke-virtual {v12}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v19

    if-gez v19, :cond_6

    .line 525
    invoke-virtual {v12}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v16

    .line 526
    .local v16, "photoPrimaryDate":Ljava/util/Date;
    :goto_2
    invoke-virtual {v13}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v19

    if-gez v19, :cond_7

    .line 527
    invoke-virtual {v13}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v18

    .line 529
    .local v18, "videoPrimaryDate":Ljava/util/Date;
    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    .line 530
    .local v5, "cmp":I
    if-gez v5, :cond_8

    .line 531
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/FilmstripItem;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    goto/16 :goto_0

    .line 525
    .end local v5    # "cmp":I
    .end local v16    # "photoPrimaryDate":Ljava/util/Date;
    .end local v18    # "videoPrimaryDate":Ljava/util/Date;
    :cond_6
    invoke-virtual {v12}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v16

    goto :goto_2

    .line 527
    .restart local v16    # "photoPrimaryDate":Ljava/util/Date;
    :cond_7
    invoke-virtual {v13}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v18

    goto :goto_3

    .line 533
    .restart local v5    # "cmp":I
    .restart local v18    # "videoPrimaryDate":Ljava/util/Date;
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/FilmstripItem;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    goto/16 :goto_0

    .line 536
    .end local v4    # "MILLIS_IN_DAY":I
    .end local v5    # "cmp":I
    .end local v14    # "now":Ljava/util/Date;
    .end local v16    # "photoPrimaryDate":Ljava/util/Date;
    .end local v18    # "videoPrimaryDate":Ljava/util/Date;
    :cond_9
    if-eqz v12, :cond_a

    .line 537
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/FilmstripItem;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    goto/16 :goto_0

    .line 538
    :cond_a
    if-eqz v13, :cond_2

    .line 539
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/data/FilmstripItem;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    goto/16 :goto_0

    .line 552
    .restart local v8    # "i":I
    :cond_b
    new-instance v19, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemList;J)V

    return-object v19
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 437
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->doInBackground([Landroid/content/Context;)Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;)V
    .locals 10
    .param p1, "result"    # Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-wide v2, p1, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->mLastMediaId:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$402(Lcom/android/camera/data/CameraFilmstripDataAdapter;J)J

    .line 560
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last media id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v2, p1, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->mFilmstripItemList:Lcom/android/camera/data/FilmstripItemList;

    invoke-static {v0, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemList;)V

    .line 562
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 566
    :cond_0
    new-instance v1, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    iget-boolean v7, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mIsSecure:Z

    iget-wide v8, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->mOnCreateTime:J

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Landroid/content/Context;JLcom/android/camera/util/Callback;ZJ)V

    .line 567
    .local v1, "ltask":Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 437
    check-cast p1, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->onPostExecute(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;)V

    return-void
.end method
