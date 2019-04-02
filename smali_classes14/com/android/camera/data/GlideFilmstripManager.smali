.class public final Lcom/android/camera/data/GlideFilmstripManager;
.super Ljava/lang/Object;
.source "GlideFilmstripManager.java"


# static fields
.field private static final DEFAULT_MAX_IMAGE_DISPLAY_SIZE:I = 0x800

.field public static final DEFAULT_PLACEHOLDER_RESOURCE:I = 0x7f0e0096

.field private static final EST_PIXELS_PER_MILLI:I = 0x186a0

.field public static final JPEG_COMPRESS_QUALITY:I = 0x5a

.field public static final MAXIMUM_FULL_RES_PIXELS:I = 0x44aa20

.field public static final MAXIMUM_SMOOTH_PIXELS:I = 0xf4240

.field private static final MAX_GL_TEXTURE_SIZE:I = 0x1000

.field private static MAX_IMAGE_DISPLAY_SIZE:Lcom/android/camera/util/Size;

.field public static final MEDIASTORE_THUMB_SIZE:Lcom/android/camera/util/Size;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final TINY_THUMB_SIZE:Lcom/android/camera/util/Size;


# instance fields
.field private final mLargeImageBuilder:Lcom/bumptech/glide/DrawableRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mTinyImageBuilder:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            "**",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GlideFlmMgr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/GlideFilmstripManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 80
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/data/GlideFilmstripManager;->MEDIASTORE_THUMB_SIZE:Lcom/android/camera/util/Size;

    .line 81
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v3, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/data/GlideFilmstripManager;->TINY_THUMB_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0e0096

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    .line 102
    .local v2, "glide":Lcom/bumptech/glide/Glide;
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-direct {v0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 104
    .local v0, "bitmapEncoder":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    new-instance v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;

    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    .line 106
    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v1, v0, v4}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;-><init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 107
    .local v1, "drawableEncoder":Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 110
    .local v3, "request":Lcom/bumptech/glide/RequestManager;
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->fromMediaStore()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;

    invoke-direct {v5, p1}, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 112
    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/BitmapTypeRequest;->transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/data/GlideFilmstripManager;->mTinyImageBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 118
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->fromMediaStore()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    .line 119
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/data/GlideFilmstripManager;->mLargeImageBuilder:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 123
    return-void
.end method

.method private static clampSize(Lcom/android/camera/util/Size;DLcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 9
    .param p0, "original"    # Lcom/android/camera/util/Size;
    .param p1, "maxArea"    # D
    .param p3, "maxSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    cmpg-double v4, v4, p1

    if-gez v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 212
    .end local p0    # "original":Lcom/android/camera/util/Size;
    :goto_0
    return-object p0

    .line 202
    .restart local p0    # "original":Lcom/android/camera/util/Size;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 203
    .local v2, "ratio":D
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 204
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 208
    .local v0, "height":I
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    if-gt v1, v4, :cond_1

    invoke-virtual {p3}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    if-le v0, v4, :cond_2

    .line 209
    :cond_1
    invoke-static {p0, p3}, Lcom/android/camera/data/GlideFilmstripManager;->computeFitWithinSize(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_2
    new-instance p0, Lcom/android/camera/util/Size;

    .end local p0    # "original":Lcom/android/camera/util/Size;
    invoke-direct {p0, v1, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0
.end method

.method private static computeEglMaxTextureSize()Ljava/lang/Integer;
    .locals 16

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 234
    .local v0, "eglDisplay":Landroid/opengl/EGLDisplay;
    const/4 v4, 0x2

    new-array v13, v4, [I

    .line 235
    .local v13, "majorMinor":[I
    invoke-static {v0, v13, v2, v13, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 237
    const/16 v4, 0x9

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 244
    .local v1, "configAttr":[I
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 245
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    .local v6, "configCount":[I
    move v4, v2

    move v7, v2

    .line 246
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 249
    aget v4, v6, v2

    if-nez v4, :cond_0

    .line 250
    sget-object v2, Lcom/android/camera/data/GlideFilmstripManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "No EGL configurations found!"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    const/4 v2, 0x0

    .line 288
    :goto_0
    return-object v2

    .line 253
    :cond_0
    aget-object v8, v3, v2

    .line 256
    .local v8, "eglConfig":Landroid/opengl/EGLConfig;
    const/4 v4, 0x5

    new-array v12, v4, [I

    fill-array-data v12, :array_1

    .line 262
    .local v12, "eglSurfaceAttributes":[I
    invoke-static {v0, v8, v12, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v11

    .line 265
    .local v11, "eglSurface":Landroid/opengl/EGLSurface;
    const/4 v4, 0x3

    new-array v10, v4, [I

    fill-array-data v10, :array_2

    .line 271
    .local v10, "eglContextAttributes":[I
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v8, v4, v10, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v9

    .line 273
    .local v9, "eglContext":Landroid/opengl/EGLContext;
    invoke-static {v0, v11, v11, v9}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 276
    new-array v14, v5, [I

    .line 277
    .local v14, "maxSize":[I
    const/16 v4, 0xd33

    invoke-static {v4, v14, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 278
    aget v15, v14, v2

    .line 281
    .local v15, "result":I
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 283
    invoke-static {v0, v11}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 284
    invoke-static {v0, v9}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 285
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 288
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 237
    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 256
    :array_1
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data

    .line 265
    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static computeFitWithinSize(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 10
    .param p0, "original"    # Lcom/android/camera/util/Size;
    .param p1, "maxSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    int-to-double v8, v8

    div-double v4, v6, v8

    .line 217
    .local v4, "widthRatio":D
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 219
    .local v0, "heightRatio":D
    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move-wide v2, v0

    .line 223
    .local v2, "ratio":D
    :goto_0
    new-instance v6, Lcom/android/camera/util/Size;

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 223
    return-object v6

    .end local v2    # "ratio":D
    :cond_0
    move-wide v2, v4

    .line 219
    goto :goto_0
.end method

.method public static getMaxImageDisplaySize()Lcom/android/camera/util/Size;
    .locals 4

    .prologue
    const/16 v3, 0x800

    const/16 v2, 0x1000

    .line 62
    sget-object v1, Lcom/android/camera/data/GlideFilmstripManager;->MAX_IMAGE_DISPLAY_SIZE:Lcom/android/camera/util/Size;

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lcom/android/camera/data/GlideFilmstripManager;->computeEglMaxTextureSize()Ljava/lang/Integer;

    move-result-object v0

    .line 64
    .local v0, "size":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 66
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v3, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v1, Lcom/android/camera/data/GlideFilmstripManager;->MAX_IMAGE_DISPLAY_SIZE:Lcom/android/camera/util/Size;

    .line 77
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/camera/data/GlideFilmstripManager;->MAX_IMAGE_DISPLAY_SIZE:Lcom/android/camera/util/Size;

    return-object v1

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 71
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v2, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v1, Lcom/android/camera/data/GlideFilmstripManager;->MAX_IMAGE_DISPLAY_SIZE:Lcom/android/camera/util/Size;

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v1, Lcom/android/camera/data/GlideFilmstripManager;->MAX_IMAGE_DISPLAY_SIZE:Lcom/android/camera/util/Size;

    goto :goto_0
.end method


# virtual methods
.method public final loadFull(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;
    .param p3, "original"    # Lcom/android/camera/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/android/camera/util/Size;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const-wide v2, 0x41512a8800000000L    # 4500000.0

    invoke-static {}, Lcom/android/camera/data/GlideFilmstripManager;->getMaxImageDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-static {p3, v2, v3, v1}, Lcom/android/camera/data/GlideFilmstripManager;->clampSize(Lcom/android/camera/util/Size;DLcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 133
    .local v0, "size":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/data/GlideFilmstripManager;->mLargeImageBuilder:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 134
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 133
    return-object v1
.end method

.method public loadMediaStoreThumb(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            "**",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v1, Lcom/android/camera/data/GlideFilmstripManager;->MEDIASTORE_THUMB_SIZE:Lcom/android/camera/util/Size;

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {}, Lcom/android/camera/data/GlideFilmstripManager;->getMaxImageDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/data/GlideFilmstripManager;->clampSize(Lcom/android/camera/util/Size;DLcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 162
    .local v0, "size":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/data/GlideFilmstripManager;->mTinyImageBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 163
    invoke-virtual {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 162
    return-object v1
.end method

.method public loadScreen(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;Lcom/android/camera/util/Size;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;
    .param p3, "original"    # Lcom/android/camera/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/android/camera/util/Size;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {}, Lcom/android/camera/data/GlideFilmstripManager;->getMaxImageDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-static {p3, v2, v3, v1}, Lcom/android/camera/data/GlideFilmstripManager;->clampSize(Lcom/android/camera/util/Size;DLcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 147
    .local v0, "size":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/data/GlideFilmstripManager;->mLargeImageBuilder:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 148
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 147
    return-object v1
.end method

.method public loadTinyThumb(Landroid/net/Uri;Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<",
            "Landroid/net/Uri;",
            "**",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    sget-object v1, Lcom/android/camera/data/GlideFilmstripManager;->TINY_THUMB_SIZE:Lcom/android/camera/util/Size;

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {}, Lcom/android/camera/data/GlideFilmstripManager;->getMaxImageDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/data/GlideFilmstripManager;->clampSize(Lcom/android/camera/util/Size;DLcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 178
    .local v0, "size":Lcom/android/camera/util/Size;
    iget-object v1, p0, Lcom/android/camera/data/GlideFilmstripManager;->mTinyImageBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    .line 179
    invoke-virtual {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 180
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 178
    return-object v1
.end method
