.class Lcom/android/camera/VideoModule$2;
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
    .line 289
    iput-object p1, p0, Lcom/android/camera/VideoModule$2;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/VideoModule$2;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/VideoModule$2;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 297
    :cond_0
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 302
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 307
    return-void
.end method
