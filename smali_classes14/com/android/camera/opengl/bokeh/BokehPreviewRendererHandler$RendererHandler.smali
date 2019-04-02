.class Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;
.super Landroid/os/Handler;
.source "BokehPreviewRendererHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;
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

.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Landroid/os/Looper;ZI)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isFrontCam"    # Z
    .param p4, "sensorOrientation"    # I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .line 101
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    iput-boolean p3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    .line 103
    iput p4, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    .line 104
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 126
    return-void
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$302(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Z)Z

    .line 150
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$202(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/render/NV21ImageRender;->release()V

    .line 153
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 157
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 161
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 163
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

    .line 129
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 133
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 134
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0, v5}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$202(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Z)Z

    .line 137
    new-instance v0, Lcom/android/camera/opengl/render/NV21ImageRender;

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    iget v4, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/opengl/render/NV21ImageRender;-><init>(IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    .line 138
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0, v5}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$302(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Z)Z

    goto :goto_0
.end method

.method private updatePreview(II[Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "format"    # I
    .param p2, "bufferSize"    # I
    .param p3, "byteBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mNV21ImageRender:Lcom/android/camera/opengl/render/NV21ImageRender;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/opengl/render/NV21ImageRender;->draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->init()V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->setOutputSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/nio/ByteBuffer;

    check-cast v0, [Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->updatePreview(II[Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 119
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->release()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$300(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$200(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
