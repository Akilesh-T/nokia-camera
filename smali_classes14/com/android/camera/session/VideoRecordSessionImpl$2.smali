.class Lcom/android/camera/session/VideoRecordSessionImpl$2;
.super Ljava/lang/Object;
.source "VideoRecordSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/VideoRecordSessionImpl;-><init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/session/VideoRecordSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v0, "videoContentValues":Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$400(Lcom/android/camera/session/VideoRecordSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "_display_name"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->val$filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "datetaken"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$500(Lcom/android/camera/session/VideoRecordSessionImpl;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v1, "date_modified"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$500(Lcom/android/camera/session/VideoRecordSessionImpl;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$600(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v2}, Lcom/android/camera/util/VideoUtil;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "_data"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "width"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$600(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v1, "height"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$600(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v3}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$600(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v3}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$600(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$700(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$700(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 199
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$700(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl$2;->this$0:Lcom/android/camera/session/VideoRecordSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/VideoRecordSessionImpl;->access$800(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method
