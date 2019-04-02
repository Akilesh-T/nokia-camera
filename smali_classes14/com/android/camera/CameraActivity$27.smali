.class Lcom/android/camera/CameraActivity$27;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 3799
    iput-object p1, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$27;->val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4
    .param p1, "arg"    # [Ljava/lang/Void;

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$6900(Lcom/android/camera/CameraActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3803
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/CameraActivity;->access$7002(Lcom/android/camera/CameraActivity;J)J

    .line 3804
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$7000(Lcom/android/camera/CameraActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3799
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$27;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 3826
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Cancell updateStorageSpace"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3827
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "bytes"    # Ljava/lang/Long;

    .prologue
    .line 3810
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStorageSpace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3811
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 3814
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    if-eqz v0, :cond_0

    .line 3815
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3816
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->val$callback:Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;->onStorageUpdateDone(J)V

    .line 3821
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$27;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$7102(Lcom/android/camera/CameraActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 3822
    return-void

    .line 3818
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ignoring storage callback after activity pause"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3799
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$27;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
