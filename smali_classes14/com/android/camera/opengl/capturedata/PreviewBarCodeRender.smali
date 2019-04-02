.class public Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;
.super Ljava/lang/Object;
.source "PreviewBarCodeRender.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;
    }
.end annotation


# static fields
.field public static final BARCODE_ANALYZE_YUV_TYPE:Z

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final DELAY_FIRST_TIME:J

.field private final DELAY__FIRST_CHECKUI_TIME:J

.field private final DELAY__NORMAL_TIME:J

.field private final MSG_DISSMISS_BARCODEUI:I

.field private final MSG_SCAN_BAR_CODE_BITMAP:I

.field private final MSG_SCAN_BAR_CODE_YUV:I

.field private barcode_ShowTime:I

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field private mBarCodeDialog:Lcom/android/camera/barcode/BarCodeDialog;

.field private mBarCodeYUVData:[B

.field private final mCaptureModuleUI:Lcom/android/camera/CaptureModuleUI;

.field private final mFocusActiveStates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/OneCamera$AutoFocusState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

.field private mMainPreviewCallbackSurface:Landroid/view/Surface;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private final mRendererHandler:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field setBarcodeData:Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewBarCodeRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/app/AppController;Lcom/android/camera/async/Lifetime;IILcom/android/camera/async/MainThread;)V
    .locals 5
    .param p1, "captureModuleUI"    # Lcom/android/camera/CaptureModuleUI;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "mainThread"    # Lcom/android/camera/async/MainThread;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->DELAY_FIRST_TIME:J

    .line 56
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->DELAY__NORMAL_TIME:J

    .line 57
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->DELAY__FIRST_CHECKUI_TIME:J

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->MSG_SCAN_BAR_CODE_BITMAP:I

    .line 59
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->MSG_SCAN_BAR_CODE_YUV:I

    .line 60
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->MSG_DISSMISS_BARCODEUI:I

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->setBarcodeData:Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;

    .line 66
    iput v4, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->barcode_ShowTime:I

    .line 71
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 74
    sget-object v1, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "init PreviewBarCodeRender"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iput p4, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mSurfaceWidth:I

    .line 76
    iput p5, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mSurfaceHeight:I

    .line 77
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mCaptureModuleUI:Lcom/android/camera/CaptureModuleUI;

    .line 78
    iput-object p2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mAppController:Lcom/android/camera/app/AppController;

    .line 79
    iput-object p6, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    invoke-direct {p0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->initBarCode()V

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewBarCodeRender.RendererHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "previewEglThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mRendererHandler:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    .line 89
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusActiveStates:Ljava/util/Set;

    .line 90
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusActiveStates:Ljava/util/Set;

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusActiveStates:Ljava/util/Set;

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;

    invoke-direct {v1, p0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$1;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)V

    iput-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 140
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mRendererHandler:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusActiveStates:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mBarCodeYUVData:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mBarCodeYUVData:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->convertYUVFromYUV420Image(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)Lcom/android/camera/barcode/BarCodeDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mBarCodeDialog:Lcom/android/camera/barcode/BarCodeDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->barcode_ShowTime:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->barcode_ShowTime:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->barcode_ShowTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->barcode_ShowTime:I

    return v0
.end method

.method private convertYUVFromYUV420Image(Landroid/media/Image;)[B
    .locals 14
    .param p1, "img"    # Landroid/media/Image;

    .prologue
    const/4 v8, 0x0

    .line 224
    if-nez p1, :cond_0

    move-object v1, v8

    .line 256
    :goto_0
    return-object v1

    .line 227
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v9

    const/16 v10, 0x23

    if-eq v9, v10, :cond_1

    move-object v1, v8

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42800000    # 64.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 230
    .local v0, "aligned64_width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 232
    .local v3, "height":I
    mul-int v9, v0, v3

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 234
    .local v4, "outBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 235
    .local v7, "y_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 236
    .local v5, "u_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 238
    .local v6, "v_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 239
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 241
    mul-int v9, v0, v3

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 249
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    new-array v1, v9, [B

    .line 250
    .local v1, "convertedData":[B
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v0    # "aligned64_width":I
    .end local v1    # "convertedData":[B
    .end local v3    # "height":I
    .end local v4    # "outBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "u_buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "v_buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "y_buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v9, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertYUVFromYUV420Image error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v8

    .line 256
    goto/16 :goto_0
.end method

.method private generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 6
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "threadName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    sget-object v2, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "generatePreviewCallbackSurface()"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 220
    :goto_0
    return-object v2

    .line 190
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 191
    .local v0, "isClosed":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p4}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p4}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 192
    .local v1, "previewCallbackImageReader":Landroid/media/ImageReader;
    new-instance v2, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$2;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/ImageReader;)V

    invoke-virtual {p1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 203
    new-instance v2, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;-><init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v3, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v3}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    const/16 v4, 0xa

    .line 219
    invoke-virtual {v3, p1, p3, v4}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v3

    .line 203
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 220
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_0
.end method

.method private initBarCode()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/barcode/BarCodeDialog;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mBarCodeDialog:Lcom/android/camera/barcode/BarCodeDialog;

    .line 164
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mRendererHandler:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mRendererHandler:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$RendererHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusActiveStates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 158
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->stopBarcode()V

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    return-object v0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 173
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainPreviewCallbackSurface() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    const-string v2, "Main Preview Callback Handler"

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    monitor-exit v1

    .line 181
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopBarcode()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mBarCodeDialog:Lcom/android/camera/barcode/BarCodeDialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->mBarCodeDialog:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-virtual {v0}, Lcom/android/camera/barcode/BarCodeDialog;->stopBarCode()V

    .line 170
    :cond_0
    return-void
.end method
