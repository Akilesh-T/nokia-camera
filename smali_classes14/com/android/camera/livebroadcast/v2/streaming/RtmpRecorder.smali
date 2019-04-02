.class public Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;
.super Ljava/lang/Object;
.source "RtmpRecorder.java"


# instance fields
.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;


# direct methods
.method public constructor <init>(Lcom/android/camera/pip/opengl/EglCore;)V
    .locals 0
    .param p1, "eglCore"    # Lcom/android/camera/pip/opengl/EglCore;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 15
    return-void
.end method


# virtual methods
.method public addMediaCodecSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 18
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 19
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v0

    return v0
.end method

.method public makeCurrent()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 30
    return-void
.end method

.method public removeMediaCodecSurface()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 26
    :cond_0
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 1
    .param p1, "nsecs"    # J

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 38
    return-void
.end method

.method public swapBuffers()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 34
    return-void
.end method
