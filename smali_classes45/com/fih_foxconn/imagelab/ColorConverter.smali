.class public Lcom/fih_foxconn/imagelab/ColorConverter;
.super Ljava/lang/Object;
.source "ColorConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ColorConverter"


# instance fields
.field format:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSInit;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ARGBToBitmap([BIIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "in"    # [B
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "w_stride"    # I
    .param p4, "h_stride"    # I

    .prologue
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 79
    .local v2, "javaExecuteStart":J
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 81
    .local v4, "out":Landroid/graphics/Bitmap;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 83
    .local v0, "javaExecuteEnd":J
    const-string v5, "ColorConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ARGBToBitmap - exec time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v0, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v4
.end method

.method private static BitmapToARGB(Landroid/graphics/Bitmap;[BIIII)V
    .locals 10
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "w_stride"    # I
    .param p5, "h_stride"    # I

    .prologue
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 114
    .local v4, "javaExecuteStart":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 117
    .local v2, "javaExecuteEnd":J
    const-string v1, "ColorConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapToARGB - exec time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method private static BitmapToNV12(Landroid/graphics/Bitmap;[BIIII)V
    .locals 12
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "w_stride"    # I
    .param p5, "h_stride"    # I

    .prologue
    .line 134
    mul-int v0, p2, p3

    new-array v1, v0, [I

    .line 135
    .local v1, "inPixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "javaExecuteStart":J
    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 137
    invoke-static/range {v1 .. v6}, Lcom/fih_foxconn/imagelab/ColorConverter;->_ARGBToNV12([I[BIIII)V

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 139
    .local v8, "javaExecuteEnd":J
    const-string v0, "ColorConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ARGBToNV12 - exec time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v8, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method private static BitmapToNV21(Landroid/graphics/Bitmap;[BIIII)V
    .locals 12
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "w_stride"    # I
    .param p5, "h_stride"    # I

    .prologue
    .line 123
    mul-int v0, p2, p3

    new-array v1, v0, [I

    .line 124
    .local v1, "inPixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "javaExecuteStart":J
    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 126
    invoke-static/range {v1 .. v6}, Lcom/fih_foxconn/imagelab/ColorConverter;->_ARGBToNV21([I[BIIII)V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 128
    .local v8, "javaExecuteEnd":J
    const-string v0, "ColorConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ARGBToNV21 - exec time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v8, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public static ConvertBitmapToFormat(Landroid/graphics/Bitmap;[BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)V
    .locals 3
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "w_stride"    # I
    .param p5, "h_stride"    # I
    .param p6, "format"    # Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .prologue
    .line 61
    sget-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$1;->$SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I

    invoke-virtual {p6}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const-string v0, "ColorConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converter doesn\'t support this format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-static/range {p0 .. p5}, Lcom/fih_foxconn/imagelab/ColorConverter;->BitmapToNV21(Landroid/graphics/Bitmap;[BIIII)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-static/range {p0 .. p5}, Lcom/fih_foxconn/imagelab/ColorConverter;->BitmapToNV12(Landroid/graphics/Bitmap;[BIIII)V

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-static/range {p0 .. p5}, Lcom/fih_foxconn/imagelab/ColorConverter;->BitmapToARGB(Landroid/graphics/Bitmap;[BIIII)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ConvertFromFormatToBitmap([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "in"    # [B
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "w_stride"    # I
    .param p4, "h_stride"    # I
    .param p5, "format"    # Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .prologue
    .line 40
    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$1;->$SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I

    invoke-virtual {p5}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    const-string v1, "ColorConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converter doesn\'t support this format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 56
    .local v0, "rst":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 42
    .end local v0    # "rst":Landroid/graphics/Bitmap;
    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fih_foxconn/imagelab/ColorConverter;->NV21ToBitmap([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .restart local v0    # "rst":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 45
    .end local v0    # "rst":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fih_foxconn/imagelab/ColorConverter;->NV12ToBitmap([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .restart local v0    # "rst":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 48
    .end local v0    # "rst":Landroid/graphics/Bitmap;
    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fih_foxconn/imagelab/ColorConverter;->ARGBToBitmap([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .restart local v0    # "rst":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static NV12ToBitmap([BIIII)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "in"    # [B
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "w_stride"    # I
    .param p4, "h_stride"    # I

    .prologue
    .line 101
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 102
    .local v12, "out":Landroid/graphics/Bitmap;
    mul-int v0, p1, p2

    new-array v1, v0, [I

    .line 103
    .local v1, "pixels":[I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "javaExecuteStart":J
    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ColorConverter;->_NV12ToRGBA([B[IIIII)V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 106
    .local v8, "javaExecuteEnd":J
    const-string v0, "ColorConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_NV12ToRGBA - exec time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v8, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 109
    return-object v12
.end method

.method private static NV21ToBitmap([BIIII)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "in"    # [B
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "w_stride"    # I
    .param p4, "h_stride"    # I

    .prologue
    .line 89
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 90
    .local v12, "out":Landroid/graphics/Bitmap;
    mul-int v0, p1, p2

    new-array v1, v0, [I

    .line 91
    .local v1, "pixels":[I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "javaExecuteStart":J
    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ColorConverter;->_NV21ToRGBA([B[IIIII)V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 94
    .local v8, "javaExecuteEnd":J
    const-string v0, "ColorConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_NV21ToRGBA - exec time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v8, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 97
    return-object v12
.end method

.method private static native _ARGBToNV12([I[BIIII)V
.end method

.method private static native _ARGBToNV21([I[BIIII)V
.end method

.method private static native _NV12ToRGBA([B[IIIII)V
.end method

.method private static native _NV21ToRGBA([B[IIIII)V
.end method
