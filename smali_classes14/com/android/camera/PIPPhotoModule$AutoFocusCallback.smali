.class final Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PIPPhotoModule;Ljava/lang/String;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p2, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->tag:Ljava/lang/String;

    .line 926
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 930
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusResult(Z)V

    .line 931
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-boolean v3, v3, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->tag:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 936
    .local v2, "index":I
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->mFocusFinish:[Z

    aput-boolean v8, v3, v2

    .line 937
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v3, v3, Lcom/android/camera/PIPPhotoModule;->mAutoFocusTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v6}, Lcom/android/camera/PIPPhotoModule;->access$2400(Lcom/android/camera/PIPPhotoModule;)[J

    move-result-object v6

    aget-wide v6, v6, v2

    sub-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 938
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAutoFocusTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v5, v5, Lcom/android/camera/PIPPhotoModule;->mAutoFocusTime:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms   focused = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 939
    const/4 v0, 0x1

    .line 940
    .local v0, "focusFinished":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_3

    .line 941
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->mFocusFinish:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_2

    .line 942
    const/4 v0, 0x0

    .line 940
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 945
    :cond_3
    if-eqz v0, :cond_0

    .line 946
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_4

    .line 947
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->mFocusFinish:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 949
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3, v8}, Lcom/android/camera/PIPPhotoModule;->access$2500(Lcom/android/camera/PIPPhotoModule;I)V

    .line 950
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PIPPhotoModule;->capture()Z

    goto :goto_0
.end method
