.class Lcom/laifeng/sopcastsdk/video/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mSurface:Landroid/view/Surface;

    .line 23
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 24
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 25
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mSurface:Landroid/view/Surface;

    .line 35
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/InputSurface;->eglSetup()V

    .line 36
    return-void
.end method

.method private eglSetup()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 75
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 79
    .local v10, "version":[I
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 92
    .local v1, "attribList":[I
    new-array v3, v11, [Landroid/opengl/EGLConfig;

    .line 93
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v11, [I

    .line 94
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 103
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v5

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 105
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkEglError(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    new-array v9, v11, [I

    const/16 v0, 0x3038

    aput v0, v9, v2

    .line 113
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v0, v4, v5, v9, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 115
    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkEglError(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    return-void

    .line 84
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    .line 99
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 40
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 41
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 44
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 46
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mSurface:Landroid/view/Surface;

    .line 47
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 48
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 49
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 50
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 3
    .param p1, "nsecs"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 68
    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
