.class public Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;
.super Ljava/lang/Object;
.source "ArcsoftPanoramaBurst.java"


# static fields
.field public static final COMMAND_SELECT:I = 0x0

.field public static final COMMAND_STITCH:I = 0x1

.field public static final COMMAND_STOP:I = 0x2

.field public static final DIRECTION_BOTTOM2TOP:I = 0x3

.field public static final DIRECTION_LEFT2RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT2LEFT:I = 0x1

.field public static final DIRECTION_TOP2BOTTOM:I = 0x2

.field public static final DIRECTION_UNKNOW:I = -0x1

.field public static final ERR_360DEGREE:I = 0x7009

.field public static final ERR_MAX_FRAME_COUNT:I = 0x7008

.field public static final ERR_SHAKE_TOO_BIG:I = 0x7007

.field public static final ERR_STITCH_DIRECTION:I = 0x7006

.field public static final ERR_TRACE_DIRECTION:I = 0x7001

.field public static final ERR_TRACE_DIRECTION_BACK:I = 0x7011

.field public static final ERR_TRACE_LESS_FEATURE:I = 0x7003

.field public static final ERR_TRACE_NO_FEATURE:I = 0x7002

.field public static final ERR_TRACE_NO_FRAME:I = 0x7012

.field public static final ERR_TRACE_TOO_QUICK:I = 0x7004

.field public static final ERR_TRACE_TOO_SLOW:I = 0x7005

.field public static final MERR_BASE:I = 0x7000

.field public static final MOK:I = 0x0

.field public static final MWARN_BASE:I = 0x8000

.field private static final TAG:Ljava/lang/String;

.field public static final THUMBNAIL_ORIENTATION:I = 0x5a

.field public static final WARN_MOVE_SLOPE:I = 0x8001

.field public static final WARN_SHAKE_SMALL:I = 0x8010

.field public static final WARN_SHAKE_TOO_BIG:I = 0x8020

.field public static final WARN_TRACE_LITTLE_QUICK:I = 0x8080

.field private static mIsSupported:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->TAG:Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    .line 49
    :try_start_0
    const-string v1, "jni_arcsoft_panoramaburst"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeInit()V

    .line 51
    const/4 v1, 0x1

    sput-boolean v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    .line 52
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary jni_arcsoft_panoramaburst OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary UnsatisfiedLinkError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(JJIFF)V
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "hAngle"    # F
    .param p7, "vAngle"    # F

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeSetup(JJIFF)V

    goto :goto_0
.end method

.method public static getErrorMessageId(IZ)I
    .locals 1
    .param p0, "error"    # I
    .param p1, "isFail"    # Z

    .prologue
    .line 67
    const v0, 0x7f0800b3

    .line 68
    .local v0, "error_msg_id":I
    sparse-switch p0, :sswitch_data_0

    .line 107
    :goto_0
    return v0

    .line 70
    :sswitch_0
    if-eqz p1, :cond_0

    const v0, 0x7f08001f

    .line 71
    :goto_1
    goto :goto_0

    .line 70
    :cond_0
    const v0, 0x7f08044b

    goto :goto_1

    .line 74
    :sswitch_1
    if-eqz p1, :cond_1

    const v0, 0x7f080021

    .line 75
    :goto_2
    goto :goto_0

    .line 74
    :cond_1
    const v0, 0x7f08044c

    goto :goto_2

    .line 77
    :sswitch_2
    if-eqz p1, :cond_2

    const v0, 0x7f08001d

    .line 78
    :goto_3
    goto :goto_0

    .line 77
    :cond_2
    const v0, 0x7f08044a

    goto :goto_3

    .line 80
    :sswitch_3
    if-eqz p1, :cond_3

    const v0, 0x7f080088

    .line 81
    :goto_4
    goto :goto_0

    .line 80
    :cond_3
    const v0, 0x7f08044d

    goto :goto_4

    .line 83
    :sswitch_4
    if-eqz p1, :cond_4

    const v0, 0x7f080089

    .line 84
    :goto_5
    goto :goto_0

    .line 83
    :cond_4
    const v0, 0x7f08044e

    goto :goto_5

    .line 86
    :sswitch_5
    if-eqz p1, :cond_5

    const v0, 0x7f080087

    .line 87
    :goto_6
    goto :goto_0

    .line 86
    :cond_5
    const v0, 0x7f080449

    goto :goto_6

    .line 89
    :sswitch_6
    const v0, 0x7f080219

    .line 90
    goto :goto_0

    .line 92
    :sswitch_7
    const v0, 0x7f080294

    .line 93
    goto :goto_0

    .line 95
    :sswitch_8
    const v0, 0x7f080296

    .line 96
    goto :goto_0

    .line 98
    :sswitch_9
    const v0, 0x7f080295

    .line 99
    goto :goto_0

    .line 101
    :sswitch_a
    const v0, 0x7f080297

    .line 102
    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x7001 -> :sswitch_0
        0x7002 -> :sswitch_1
        0x7003 -> :sswitch_1
        0x7004 -> :sswitch_3
        0x7005 -> :sswitch_4
        0x7006 -> :sswitch_2
        0x7007 -> :sswitch_5
        0x7012 -> :sswitch_6
        0x8001 -> :sswitch_7
        0x8010 -> :sswitch_8
        0x8020 -> :sswitch_9
        0x8080 -> :sswitch_a
    .end sparse-switch
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    return v0
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetPreviewImage([B)V
.end method

.method private native nativeGetResultImage([B)V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeSetInputImage(JJI[B[I[I[I[I[I)I
.end method

.method private native nativeSetup(JJIFF)V
.end method

.method private native nativeStopPanorama([I[I[I[I[I)I
.end method


# virtual methods
.method public getPreviewImage([B)V
    .locals 1
    .param p1, "image"    # [B

    .prologue
    .line 121
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeGetPreviewImage([B)V

    goto :goto_0
.end method

.method public getResultImage([B)V
    .locals 1
    .param p1, "image"    # [B

    .prologue
    .line 131
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeGetResultImage([B)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeFinalize()V

    goto :goto_0
.end method

.method public setInputImage(JJI[B[I[I[I[I[I)I
    .locals 1
    .param p1, "lWidth"    # J
    .param p3, "lHeight"    # J
    .param p5, "pixelArrayFormat"    # I
    .param p6, "data"    # [B
    .param p7, "progress"    # [I
    .param p8, "direction"    # [I
    .param p9, "offset"    # [I
    .param p10, "imageAttr"    # [I
    .param p11, "totalLength"    # [I

    .prologue
    .line 116
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p11}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeSetInputImage(JJI[B[I[I[I[I[I)I

    move-result v0

    goto :goto_0
.end method

.method public stopPanorama([I[I[I[I[I)I
    .locals 1
    .param p1, "progress"    # [I
    .param p2, "direction"    # [I
    .param p3, "offset"    # [I
    .param p4, "imageAttr"    # [I
    .param p5, "totalLength"    # [I

    .prologue
    .line 126
    sget-boolean v0, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->mIsSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->nativeStopPanorama([I[I[I[I[I)I

    move-result v0

    goto :goto_0
.end method
