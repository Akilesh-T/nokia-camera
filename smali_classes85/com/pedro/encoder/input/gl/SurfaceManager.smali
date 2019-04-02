.class public Lcom/pedro/encoder/input/gl/SurfaceManager;
.super Ljava/lang/Object;
.source "SurfaceManager.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSharedContext:Landroid/opengl/EGLContext;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    .line 25
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    .line 26
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    .line 27
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 44
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->surface:Landroid/view/Surface;

    .line 45
    invoke-direct {p0}, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSetup()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Lcom/pedro/encoder/input/gl/SurfaceManager;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "manager"    # Lcom/pedro/encoder/input/gl/SurfaceManager;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    .line 25
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    .line 26
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    .line 27
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 35
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->surface:Landroid/view/Surface;

    .line 36
    iget-object v0, p2, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    .line 37
    invoke-direct {p0}, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSetup()V

    .line 38
    return-void
.end method

.method private eglSetup()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 71
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 75
    .local v10, "version":[I
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_2

    .line 82
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 93
    .local v1, "attribList":[I
    :goto_0
    new-array v3, v11, [Landroid/opengl/EGLConfig;

    .line 94
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v11, [I

    .line 95
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 96
    const-string v0, "eglCreateContext RGB888+recordable ES2"

    invoke-static {v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkEglError(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 103
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 105
    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    .line 109
    :goto_1
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkEglError(Ljava/lang/String;)V

    .line 112
    new-array v9, v11, [I

    const/16 v0, 0x3038

    aput v0, v9, v2

    .line 115
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->surface:Landroid/view/Surface;

    invoke-static {v0, v4, v5, v9, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    .line 116
    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkEglError(Ljava/lang/String;)V

    .line 118
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 119
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 120
    return-void

    .line 87
    .end local v1    # "attribList":[I
    .end local v3    # "configs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numConfigs":[I
    .end local v8    # "attrib_list":[I
    .end local v9    # "surfaceAttribs":[I
    :cond_2
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .restart local v1    # "attribList":[I
    goto :goto_0

    .line 107
    .restart local v3    # "configs":[Landroid/opengl/EGLConfig;
    .restart local v6    # "numConfigs":[I
    .restart local v8    # "attrib_list":[I
    :cond_3
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    goto :goto_1

    .line 82
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
        0x3038
    .end array-data

    .line 99
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 87
    :array_2
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
.end method


# virtual methods
.method public getEglContext()Landroid/opengl/EGLContext;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method public getEglSharedContext()Landroid/opengl/EGLContext;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSharedContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getEglSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 129
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 130
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 131
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 132
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 134
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 135
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglContext:Landroid/opengl/EGLContext;

    .line 136
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    .line 137
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 3
    .param p1, "nsecs"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 63
    const-string v0, "eglPresentationTimeANDROID"

    invoke-static {v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkEglError(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public swapBuffer()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/SurfaceManager;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 56
    return-void
.end method
