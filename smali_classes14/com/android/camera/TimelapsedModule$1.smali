.class Lcom/android/camera/TimelapsedModule$1;
.super Ljava/lang/Object;
.source "TimelapsedModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TimelapsedModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapsedModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$1;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$1;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0, p1}, Lcom/android/camera/TimelapsedModule;->access$102(Lcom/android/camera/TimelapsedModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 203
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$1;->this$0:Lcom/android/camera/TimelapsedModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/TimelapsedModule;->access$202(Lcom/android/camera/TimelapsedModule;Z)Z

    .line 204
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$1;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0}, Lcom/android/camera/TimelapsedModule;->access$300(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 211
    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 216
    return-void
.end method
