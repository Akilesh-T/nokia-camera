.class Lcom/android/camera/VideoModule$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0, p1}, Lcom/android/camera/VideoModule;->access$102(Lcom/android/camera/VideoModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 269
    iget-object v0, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$202(Lcom/android/camera/VideoModule;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->onVideoSaved()V

    .line 271
    iget-object v0, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 280
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 285
    return-void
.end method
