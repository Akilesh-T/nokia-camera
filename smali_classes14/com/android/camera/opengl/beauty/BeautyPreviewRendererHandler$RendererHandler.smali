.class Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;
.super Landroid/os/Handler;
.source "BeautyPreviewRendererHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererHandler"
.end annotation


# instance fields
.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private final mIsFrontCam:Z

.field private mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

.field private final mSensorOrientation:I

.field private mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field final synthetic this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Landroid/os/Looper;ZI)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isFrontCam"    # Z
    .param p4, "sensorOrientation"    # I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .line 91
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    iput-boolean p3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    .line 93
    iput p4, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    .line 94
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 116
    return-void
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$302(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$202(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Z)Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/render/NV21ImageRender;->release()V

    .line 143
    iput-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 147
    iput-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 151
    iput-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 153
    :cond_2
    return-void
.end method

.method private setOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$000(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$100(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 123
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 124
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0, v5}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$202(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Z)Z

    .line 127
    new-instance v0, Lcom/android/camera/opengl/render/NV21ImageRender;

    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$000(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$100(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    iget v4, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/opengl/render/NV21ImageRender;-><init>(IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    .line 128
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0, v5}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$302(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Z)Z

    goto :goto_0
.end method

.method private updatePreview(II[Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "format"    # I
    .param p2, "bufferSize"    # I
    .param p3, "byteBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/opengl/render/NV21ImageRender;->draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->init()V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->setOutputSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/nio/ByteBuffer;

    check-cast v0, [Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->updatePreview(II[Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->release()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$300(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$200(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
