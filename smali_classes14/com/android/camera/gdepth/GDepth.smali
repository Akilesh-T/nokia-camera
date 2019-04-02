.class public Lcom/android/camera/gdepth/GDepth;
.super Ljava/lang/Object;
.source "GDepth.java"


# static fields
.field public static final FORMAT_8_BIT:Ljava/lang/String; = "8-bit"

.field public static final FORMAT_RANGE_INVERSE:Ljava/lang/String; = "RangeInverse"

.field public static final FORMAT_RANGLE_LINEAR:Ljava/lang/String; = "RangeLinear"

.field private static final MIME:Ljava/lang/String; = "image/jpeg"

.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field public static final PREFIX:Ljava/lang/String; = "GDepth"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_FAR:Ljava/lang/String; = "Far"

.field public static final PROPERTY_FORMAT:Ljava/lang/String; = "Format"

.field public static final PROPERTY_IMAGEHEIDHT:Ljava/lang/String; = "ImageHeight"

.field public static final PROPERTY_IMAGEWIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final PROPERTY_MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field public static final PROPERTY_MEASURETYPE:Ljava/lang/String; = "measureType"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"

.field public static final PROPERTY_NEAR:Ljava/lang/String; = "Near"

.field public static final PROPERTY_ROI_HEIGHT:Ljava/lang/String; = "RoiHeight"

.field public static final PROPERTY_ROI_WIDTH:Ljava/lang/String; = "RoiWidth"

.field public static final PROPERTY_ROI_X:Ljava/lang/String; = "RoiX"

.field public static final PROPERTY_ROI_Y:Ljava/lang/String; = "RoiY"

.field public static final PROPERTY_TOUCH_X:Ljava/lang/String; = "TouchX"

.field public static final PROPERTY_TOUCH_Y:Ljava/lang/String; = "TouchY"

.field public static final PROPERTY_UNITS:Ljava/lang/String; = "Units"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mData:Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private mGdepthJpeg:[B

.field private mRoi:Landroid/graphics/Rect;

.field private mTouchX:J

.field private mTouchY:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lcom/android/camera/debug/Log$Tag;

    const-string v2, "GDepth"

    invoke-direct {v1, v2}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/gdepth/GDepth;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 87
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "GDepth"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 89
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 90
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "gdepthJpeg"    # [B

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "RangeInverse"

    iput-object v0, p0, Lcom/android/camera/gdepth/GDepth;->mFormat:Ljava/lang/String;

    .line 81
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/android/camera/gdepth/GDepth;->mBufferWidth:I

    .line 82
    const/16 v0, 0x2f4

    iput v0, p0, Lcom/android/camera/gdepth/GDepth;->mBufferHeight:I

    .line 95
    iput-object p1, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    .line 96
    return-void
.end method

.method private compressToJPEG([B)[B
    .locals 5
    .param p1, "image"    # [B

    .prologue
    .line 181
    sget-object v2, Lcom/android/camera/gdepth/GDepth;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressToJPEG byte[].size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 184
    sget-object v2, Lcom/android/camera/gdepth/GDepth;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, " buffer can\'t be decoded "

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    const/4 v2, 0x0

    .line 189
    :goto_0
    return-object v2

    .line 187
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 189
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static createGDepth([BII)Lcom/android/camera/gdepth/GDepth;
    .locals 2
    .param p0, "gdepthJpeg"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 143
    new-instance v0, Lcom/android/camera/gdepth/GDepth;

    invoke-direct {v0, p0}, Lcom/android/camera/gdepth/GDepth;-><init>([B)V

    .line 144
    .local v0, "gDepth":Lcom/android/camera/gdepth/GDepth;
    invoke-direct {v0, p1, p2}, Lcom/android/camera/gdepth/GDepth;->encodeDepthmapJpeg(II)Z

    move-result v1

    .line 145
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 148
    .end local v0    # "gDepth":Lcom/android/camera/gdepth/GDepth;
    :goto_0
    return-object v0

    .restart local v0    # "gDepth":Lcom/android/camera/gdepth/GDepth;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encodeDepthmapJpeg(II)Z
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 153
    sget-object v2, Lcom/android/camera/gdepth/GDepth;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "encodeDepthmapJpeg"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    const/4 v12, 0x0

    .line 155
    .local v12, "result":Z
    iget-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    invoke-static {v2}, Lcom/android/camera/Exif;->isValid([B)Z

    move-result v9

    .line 157
    .local v9, "isValid":Z
    sget-object v2, Lcom/android/camera/gdepth/GDepth;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    if-nez v9, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v10, v2, 0x3

    .line 160
    .local v10, "length":I
    new-array v1, v10, [B

    .line 161
    .local v1, "yuvdata":[B
    iget-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    array-length v8, v2

    .local v8, "i":I
    :goto_0
    array-length v2, v1

    if-ge v8, v2, :cond_0

    .line 163
    const/16 v2, -0x80

    aput-byte v2, v1, v8

    .line 162
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget v3, p0, Lcom/android/camera/gdepth/GDepth;->mBufferWidth:I

    iget v4, p0, Lcom/android/camera/gdepth/GDepth;->mBufferHeight:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 166
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    array-length v2, v1

    invoke-direct {v7, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 167
    .local v7, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/gdepth/GDepth;->mBufferWidth:I

    iget v5, p0, Lcom/android/camera/gdepth/GDepth;->mBufferHeight:I

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    .local v11, "rect":Landroid/graphics/Rect;
    const/16 v2, 0x64

    invoke-virtual {v0, v11, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 169
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    .line 171
    .end local v0    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v1    # "yuvdata":[B
    .end local v7    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    invoke-direct {p0, v2}, Lcom/android/camera/gdepth/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "base64String":Ljava/lang/String;
    const/4 v12, 0x1

    .line 173
    iput-object v6, p0, Lcom/android/camera/gdepth/GDepth;->mData:Ljava/lang/String;

    .line 178
    .end local v6    # "base64String":Ljava/lang/String;
    .end local v9    # "isValid":Z
    :goto_1
    return v12

    .line 175
    :cond_2
    sget-object v2, Lcom/android/camera/gdepth/GDepth;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "compressToJPEG failure"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private serializeAsBase64Str([B)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # [B

    .prologue
    .line 197
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/gdepth/GDepth;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDepthJpeg()[B
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/gdepth/GDepth;->mGdepthJpeg:[B

    return-object v0
.end method

.method public getFar()F
    .locals 1

    .prologue
    .line 111
    const v0, 0x437f199a    # 255.1f

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "RangeInverse"

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getNear()F
    .locals 1

    .prologue
    .line 107
    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public getRoi()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/gdepth/GDepth;->mRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTouchX()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/android/camera/gdepth/GDepth;->mTouchX:J

    return-wide v0
.end method

.method public getTouchY()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/camera/gdepth/GDepth;->mTouchY:J

    return-wide v0
.end method

.method public setRoi(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "roi"    # Landroid/graphics/Rect;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/gdepth/GDepth;->mRoi:Landroid/graphics/Rect;

    .line 124
    return-void
.end method

.method public setTouchX(J)V
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/android/camera/gdepth/GDepth;->mTouchX:J

    .line 128
    return-void
.end method

.method public setTouchY(J)V
    .locals 1
    .param p1, "y"    # J

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/android/camera/gdepth/GDepth;->mTouchY:J

    .line 132
    return-void
.end method
