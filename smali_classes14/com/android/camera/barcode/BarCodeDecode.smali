.class public Lcom/android/camera/barcode/BarCodeDecode;
.super Ljava/lang/Object;
.source "BarCodeDecode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarCodeDecode"

.field private static isNoBarCodeRun:Z


# instance fields
.field private codeFormat:I

.field detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field private hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isRuning:Z

.field private isZxing:Z

.field private mController:Landroid/content/Context;

.field private mPendingFrameId:I

.field private multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/barcode/BarCodeDecode;->isNoBarCodeRun:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/barcode/BarCodeDecode;->codeFormat:I

    .line 51
    iput v1, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 52
    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDecode;->isZxing:Z

    .line 59
    return-void
.end method

.method private googleLib(Landroid/content/Context;Landroid/graphics/Bitmap;II)Lcom/android/camera/barcode/BarCodeResult;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreviewData"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 142
    new-instance v3, Lcom/android/camera/barcode/BarCodeResult;

    invoke-direct {v3}, Lcom/android/camera/barcode/BarCodeResult;-><init>()V

    .line 143
    .local v3, "mBarCodeResult":Lcom/android/camera/barcode/BarCodeResult;
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    .line 144
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->codeFormat:I

    .line 145
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 147
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 149
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v7, :cond_0

    .line 150
    new-instance v7, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x910

    .line 151
    invoke-virtual {v7, v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v7

    .line 152
    invoke-virtual {v7}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v7}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 160
    iget v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 161
    new-instance v7, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v7}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    .line 162
    invoke-virtual {v7, p2}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 163
    invoke-virtual {v7, v8}, Lcom/google/android/gms/vision/Frame$Builder;->setId(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v4

    .line 165
    .local v4, "outputFrame":Lcom/google/android/gms/vision/Frame;
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->receiveFrame(Lcom/google/android/gms/vision/Frame;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_1
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    .line 171
    .local v0, "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 173
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 174
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 175
    .local v6, "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    invoke-virtual {v3, v6}, Lcom/android/camera/barcode/BarCodeResult;->setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 176
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/camera/barcode/BarCodeResult;->setZxingResult(Lcom/google/zxing/Result;)V

    .line 177
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 186
    .end local v0    # "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    .end local v2    # "i":I
    .end local v4    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    .end local v6    # "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    :goto_2
    return-object v3

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "BarCodeDecode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "barcode start Exception e ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    goto :goto_0

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    :catch_1
    move-exception v5

    .line 167
    .local v5, "t":Ljava/lang/Throwable;
    const-string v7, "BarCodeDecode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " detector.receiveFrame(outputFrame)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    .end local v4    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 184
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/camera/barcode/BarCodeResult;->setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 185
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/camera/barcode/BarCodeResult;->setZxingResult(Lcom/google/zxing/Result;)V

    goto :goto_2
.end method

.method private googleLib(Landroid/content/Context;[BII)Lcom/android/camera/barcode/BarCodeResult;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreviewData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 84
    new-instance v3, Lcom/android/camera/barcode/BarCodeResult;

    invoke-direct {v3}, Lcom/android/camera/barcode/BarCodeResult;-><init>()V

    .line 85
    .local v3, "mBarCodeResult":Lcom/android/camera/barcode/BarCodeResult;
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    .line 86
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->codeFormat:I

    .line 87
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 89
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 91
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v8, :cond_0

    .line 92
    new-instance v8, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x910

    .line 93
    invoke-virtual {v8, v9}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v8

    .line 94
    invoke-virtual {v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p2, :cond_1

    array-length v8, p2

    if-lez v8, :cond_1

    .line 102
    iget v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 104
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 105
    .local v4, "mPendingFrameData":Ljava/nio/ByteBuffer;
    new-instance v8, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    const/16 v9, 0x11

    .line 106
    invoke-virtual {v8, v4, p3, p4, v9}, Lcom/google/android/gms/vision/Frame$Builder;->setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/barcode/BarCodeDecode;->mPendingFrameId:I

    .line 110
    invoke-virtual {v8, v9}, Lcom/google/android/gms/vision/Frame$Builder;->setId(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v5

    .line 114
    .local v5, "outputFrame":Lcom/google/android/gms/vision/Frame;
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->receiveFrame(Lcom/google/android/gms/vision/Frame;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :goto_1
    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    .line 121
    .local v0, "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 123
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 124
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 125
    .local v7, "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    invoke-virtual {v3, v7}, Lcom/android/camera/barcode/BarCodeResult;->setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 126
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/camera/barcode/BarCodeResult;->setZxingResult(Lcom/google/zxing/Result;)V

    .line 127
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 136
    .end local v0    # "barcodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    .end local v2    # "i":I
    .end local v4    # "mPendingFrameData":Ljava/nio/ByteBuffer;
    .end local v5    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    .end local v7    # "thisCode":Lcom/google/android/gms/vision/barcode/Barcode;
    :goto_2
    return-object v3

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "BarCodeDecode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "barcode start Exception e ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->detector:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "mPendingFrameData":Ljava/nio/ByteBuffer;
    .restart local v5    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    :catch_1
    move-exception v6

    .line 116
    .local v6, "t":Ljava/lang/Throwable;
    const-string v8, "BarCodeDecode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " detector.receiveFrame(outputFrame)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v4    # "mPendingFrameData":Ljava/nio/ByteBuffer;
    .end local v5    # "outputFrame":Lcom/google/android/gms/vision/Frame;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 134
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/camera/barcode/BarCodeResult;->setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/camera/barcode/BarCodeResult;->setZxingResult(Lcom/google/zxing/Result;)V

    goto :goto_2
.end method

.method private zxingLib(Landroid/content/Context;Landroid/graphics/Bitmap;II)Lcom/android/camera/barcode/BarCodeResult;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreviewData"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 236
    new-instance v10, Lcom/android/camera/barcode/BarCodeResult;

    invoke-direct {v10}, Lcom/android/camera/barcode/BarCodeResult;-><init>()V

    .line 237
    .local v10, "barCodeResult":Lcom/android/camera/barcode/BarCodeResult;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    .line 238
    new-instance v2, Ljava/util/EnumMap;

    const-class v4, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v2, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->hints:Ljava/util/Map;

    .line 239
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v12, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 241
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-static {}, Lcom/android/camera/barcode/DecodeFormatManager;->getBarCodeFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-static {}, Lcom/android/camera/barcode/DecodeFormatManager;->getQrCodeFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->hints:Ljava/util/Map;

    sget-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/barcode/BarCodeDecode;->hints:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 247
    const-string v2, "BarCodeDecode"

    const-string v4, "zxingLib"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 249
    const/4 v13, 0x0

    .line 250
    .local v13, "rawResult":Lcom/google/zxing/Result;
    mul-int v2, p3, p4

    new-array v3, v2, [I

    .line 251
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 252
    new-instance v15, Lcom/google/zxing/RGBLuminanceSource;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v15, v0, v1, v3}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 253
    .local v15, "source":Lcom/google/zxing/RGBLuminanceSource;
    if-eqz v15, :cond_0

    .line 254
    new-instance v11, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v15}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v11, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 255
    .local v11, "bitmap":Lcom/google/zxing/BinaryBitmap;
    const-string v2, "BarCodeDecode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BinaryBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v11}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v13

    .line 259
    if-eqz v13, :cond_1

    .line 260
    const-string v2, "BarCodeDecode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rawResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/barcode/BarCodeDecode;->isNoBarCodeRun:Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v3, 0x0

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 272
    .end local v11    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 273
    invoke-virtual {v10, v13}, Lcom/android/camera/barcode/BarCodeResult;->setZxingResult(Lcom/google/zxing/Result;)V

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/android/camera/barcode/BarCodeResult;->setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 275
    return-object v10

    .line 262
    .restart local v11    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_1
    :try_start_1
    const-string v2, "BarCodeDecode"

    const-string v4, "rawResult is null"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v14

    .line 266
    .local v14, "re":Lcom/google/zxing/ReaderException;
    :try_start_2
    const-string v2, "BarCodeDecode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReaderException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    const/4 v3, 0x0

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    .line 268
    .end local v14    # "re":Lcom/google/zxing/ReaderException;
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v4}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v2
.end method

.method private zxingLib(Landroid/content/Context;[BII)Lcom/android/camera/barcode/BarCodeResult;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreviewData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v7, 0x1

    .line 192
    new-instance v0, Lcom/android/camera/barcode/BarCodeResult;

    invoke-direct {v0}, Lcom/android/camera/barcode/BarCodeResult;-><init>()V

    .line 193
    .local v0, "barCodeResult":Lcom/android/camera/barcode/BarCodeResult;
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDecode;->mController:Landroid/content/Context;

    .line 197
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->hints:Ljava/util/Map;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 200
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-static {}, Lcom/android/camera/barcode/DecodeFormatManager;->getBarCodeFormats()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 202
    invoke-static {}, Lcom/android/camera/barcode/DecodeFormatManager;->getQrCodeFormats()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->hints:Ljava/util/Map;

    sget-object v6, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v5, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v5}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 205
    iget-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v6, p0, Lcom/android/camera/barcode/BarCodeDecode;->hints:Ljava/util/Map;

    invoke-virtual {v5, v6}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 207
    iput-boolean v7, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, "rawResult":Lcom/google/zxing/Result;
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/barcode/BarCodeDecode;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v4

    .line 211
    .local v4, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v4, :cond_0

    .line 212
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v5, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v5, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 214
    .local v1, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v5, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v3

    .line 216
    if-eqz v3, :cond_1

    .line 217
    const-string v5, "BarCodeDecode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/camera/barcode/BarCodeDecode;->isNoBarCodeRun:Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v5}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 229
    .end local v1    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    .line 230
    invoke-virtual {v0, v3}, Lcom/android/camera/barcode/BarCodeResult;->setZxingResult(Lcom/google/zxing/Result;)V

    .line 231
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/camera/barcode/BarCodeResult;->setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 232
    return-object v0

    .line 219
    .restart local v1    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_1
    :try_start_1
    const-string v5, "BarCodeDecode"

    const-string v6, "rawResult is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v5

    .line 226
    iget-object v5, p0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v5}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/camera/barcode/BarCodeDecode;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v6}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v5
.end method


# virtual methods
.method public BarCodeScan(Landroid/content/Context;Landroid/graphics/Bitmap;II)Lcom/android/camera/barcode/BarCodeResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "previewBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 72
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCNModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/barcode/BarCodeDecode;->zxingLib(Landroid/content/Context;Landroid/graphics/Bitmap;II)Lcom/android/camera/barcode/BarCodeResult;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/barcode/BarCodeDecode;->googleLib(Landroid/content/Context;Landroid/graphics/Bitmap;II)Lcom/android/camera/barcode/BarCodeResult;

    move-result-object v0

    goto :goto_0
.end method

.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 280
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v8, v8, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 281
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 286
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public getIsNoBarCodeRun()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/camera/barcode/BarCodeDecode;->isNoBarCodeRun:Z

    return v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDecode;->isRuning:Z

    return v0
.end method
