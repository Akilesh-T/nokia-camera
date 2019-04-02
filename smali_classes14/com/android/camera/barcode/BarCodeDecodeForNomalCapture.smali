.class public Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;
.super Ljava/lang/Object;
.source "BarCodeDecodeForNomalCapture.java"


# static fields
.field public static final KEY_BARCODE_GOOGLE_LIB_EXIST:Ljava/lang/String; = "pref_barcode_google_lib_exist_key"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private codeFormat:I

.field detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field private final mController:Lcom/android/camera/app/AppController;

.field private mDataMode:I

.field private mPendingFrameId:I

.field private mPreviewBtimap:Landroid/graphics/Bitmap;

.field mPreviewData:[B

.field mPreviewData_Height:I

.field mPreviewData_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BarCodeThread"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "mController"    # Lcom/android/camera/app/AppController;
    .param p2, "mPreviewData"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->codeFormat:I

    .line 33
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPendingFrameId:I

    .line 35
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mDataMode:I

    .line 38
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewBtimap:Landroid/graphics/Bitmap;

    .line 39
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    .line 40
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mDataMode:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;[BII)V
    .locals 3
    .param p1, "mController"    # Lcom/android/camera/app/AppController;
    .param p2, "mPreviewData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 32
    iput v2, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->codeFormat:I

    .line 33
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPendingFrameId:I

    .line 35
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mDataMode:I

    .line 44
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    .line 45
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData:[B

    .line 46
    iput p3, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData_Width:I

    .line 47
    iput p4, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData_Height:I

    .line 48
    iput v2, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->codeFormat:I

    .line 49
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPendingFrameId:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mDataMode:I

    .line 51
    return-void
.end method


# virtual methods
.method public getData()Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "mBarCodeValus":Lcom/google/android/gms/vision/barcode/Barcode;
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v8, :cond_0

    .line 56
    new-instance v8, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x910

    .line 57
    invoke-virtual {v8, v9}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v8

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 60
    :cond_0
    iget v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mDataMode:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewBtimap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 61
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "pref_barcode_google_lib_exist_key"

    invoke-virtual {v8, v9}, Lcom/android/camera/settings/SettingsManager;->getBarCodeGooglelibExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 62
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "pref_barcode_google_lib_exist_key"

    invoke-virtual {v8, v9}, Lcom/android/camera/settings/SettingsManager;->setBarCodeGooglelibExist(Ljava/lang/String;)V

    .line 65
    :cond_1
    new-instance v8, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewBtimap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1

    .line 66
    .local v1, "frame":Lcom/google/android/gms/vision/Frame;
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    .line 67
    .local v0, "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 69
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 70
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 71
    .local v7, "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    iget-object v6, v7, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 72
    .local v6, "s1":Ljava/lang/String;
    iget v8, v7, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    iput v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->codeFormat:I

    .line 73
    move-object v3, v7

    .line 77
    .end local v0    # "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    .end local v1    # "frame":Lcom/google/android/gms/vision/Frame;
    .end local v2    # "i":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    :cond_2
    iget v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mDataMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData:[B

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData:[B

    array-length v8, v8

    if-lez v8, :cond_4

    .line 78
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "pref_barcode_google_lib_exist_key"

    invoke-virtual {v8, v9}, Lcom/android/camera/settings/SettingsManager;->getBarCodeGooglelibExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 79
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    const-string v9, "pref_barcode_google_lib_exist_key"

    invoke-virtual {v8, v9}, Lcom/android/camera/settings/SettingsManager;->setBarCodeGooglelibExist(Ljava/lang/String;)V

    .line 82
    :cond_3
    iget v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPendingFrameId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPendingFrameId:I

    .line 84
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 85
    .local v4, "mPendingFrameData":Ljava/nio/ByteBuffer;
    new-instance v8, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget v9, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData_Width:I

    iget v10, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPreviewData_Height:I

    const/16 v11, 0x11

    .line 86
    invoke-virtual {v8, v4, v9, v10, v11}, Lcom/google/android/gms/vision/Frame$Builder;->setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->mPendingFrameId:I

    .line 90
    invoke-virtual {v8, v9}, Lcom/google/android/gms/vision/Frame$Builder;->setId(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v5

    .line 93
    .local v5, "outputFrame":Lcom/google/android/gms/vision/Frame;
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->receiveFrame(Lcom/google/android/gms/vision/Frame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    .line 97
    .restart local v0    # "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 98
    .restart local v2    # "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 99
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 100
    .restart local v7    # "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    iget v8, v7, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    iput v8, p0, Lcom/android/camera/barcode/BarCodeDecodeForNomalCapture;->codeFormat:I

    .line 101
    move-object v3, v7

    .line 105
    .end local v0    # "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    .end local v2    # "i":I
    .end local v4    # "mPendingFrameData":Ljava/nio/ByteBuffer;
    .end local v5    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    .end local v7    # "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    :cond_4
    return-object v3

    .line 94
    .restart local v4    # "mPendingFrameData":Ljava/nio/ByteBuffer;
    .restart local v5    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    :catch_0
    move-exception v8

    goto :goto_0
.end method
