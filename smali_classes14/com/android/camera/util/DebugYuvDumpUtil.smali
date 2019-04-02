.class public Lcom/android/camera/util/DebugYuvDumpUtil;
.super Ljava/lang/Object;
.source "DebugYuvDumpUtil.java"


# static fields
.field public static final DEBUG_YUV_SIGN:Z

.field private static final DIRECTORY_DCIM_CAMERA:Ljava/lang/String; = "Camera"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static mCameraId:Ljava/lang/String;

.field private static mSessionTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DebugYuvDumpUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/DebugYuvDumpUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 23
    const-string v0, "persist.camera.arcsoft.yuvdump"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/util/DebugYuvDumpUtil;->DEBUG_YUV_SIGN:Z

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/android/camera/util/DebugYuvDumpUtil;->mSessionTitle:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/android/camera/util/DebugYuvDumpUtil;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpNV21([BLjava/lang/String;)V
    .locals 5
    .param p0, "data"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    if-eqz v2, :cond_2

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 147
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 143
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 144
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    if-eqz v1, :cond_0

    .line 142
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v3

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 142
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 144
    :cond_1
    :goto_3
    throw v3

    .line 143
    :catch_3
    move-exception v4

    goto :goto_3

    .line 140
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 137
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "curIso"    # Ljava/lang/String;
    .param p2, "fWidth"    # I
    .param p3, "fHeight"    # I
    .param p4, "typeName"    # Ljava/lang/String;
    .param p5, "isBackCam"    # Z

    .prologue
    .line 28
    sget-boolean v2, Lcom/android/camera/util/DebugYuvDumpUtil;->DEBUG_YUV_SIGN:Z

    if-eqz v2, :cond_0

    .line 29
    invoke-static {p4, p1, p2, p3, p5}, Lcom/android/camera/util/DebugYuvDumpUtil;->getDumpFileName(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Lcom/android/camera/util/DebugYuvDumpUtil$1;

    invoke-direct {v0, p2, p0, p3, v1}, Lcom/android/camera/util/DebugYuvDumpUtil$1;-><init>(I[BILjava/lang/String;)V

    .line 39
    .local v0, "dumpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    .end local v0    # "dumpThread":Ljava/lang/Thread;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getDumpFileName(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 10
    .param p0, "typeName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "curIso"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isBackCam"    # Z

    .prologue
    .line 46
    const-string v7, "_"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "typeNameArray":[Ljava/lang/String;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v4, v6, v7

    .line 48
    .local v4, "lastPart":Ljava/lang/String;
    const/4 v5, 0x0

    .line 49
    .local v5, "reformat":Z
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 51
    .local v3, "index":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 52
    :cond_0
    const/4 v5, 0x1

    .line 57
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "fileNameBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Camera"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v7, "IMG_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v7, Lcom/android/camera/util/DebugYuvDumpUtil;->mSessionTitle:Ljava/lang/String;

    const-string v8, "_"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IMG"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 79
    const-string v7, "_ISO"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/util/DebugYuvDumpUtil;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    if-eqz v5, :cond_2

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3

    .line 93
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    aget-object v7, v6, v2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    :cond_2
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_3
    const-string v7, ".NV21"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "filename":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/util/DebugYuvDumpUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dump filename="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    return-object v1

    .line 53
    .end local v0    # "fileNameBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public static getYuvData([BIII)[B
    .locals 12
    .param p0, "dataAligned"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowBytes"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentHeight()D

    move-result-wide v0

    .line 110
    .local v0, "align":D
    int-to-double v10, p2

    div-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    double-to-int v11, v0

    mul-int v2, v10, v11

    .line 111
    .local v2, "alignH":I
    mul-int v8, p1, p2

    .line 112
    .local v8, "yLen":I
    div-int/lit8 v4, v8, 0x2

    .line 113
    .local v4, "uvLen":I
    add-int v10, v8, v4

    new-array v9, v10, [B

    .line 116
    .local v9, "yuvData":[B
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 117
    mul-int v10, p3, v3

    mul-int v11, v3, p1

    invoke-static {p0, v10, v9, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_0
    div-int/lit8 v7, p2, 0x2

    .line 122
    .local v7, "uvRows":I
    mul-int v6, p3, v2

    .line 123
    .local v6, "uvOffsetSrc":I
    mul-int v5, p1, p2

    .line 124
    .local v5, "uvOffsetDst":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_1

    .line 125
    mul-int v10, p3, v3

    add-int/2addr v10, v6

    mul-int v11, v3, p1

    add-int/2addr v11, v5

    invoke-static {p0, v10, v9, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    :cond_1
    return-object v9
.end method

.method public static setCameraId(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 155
    sput-object p0, Lcom/android/camera/util/DebugYuvDumpUtil;->mCameraId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public static setSessionTitle(Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 150
    sput-object p0, Lcom/android/camera/util/DebugYuvDumpUtil;->mSessionTitle:Ljava/lang/String;

    .line 151
    sget-object v0, Lcom/android/camera/util/DebugYuvDumpUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mSessionTitle to YUV dump= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/util/DebugYuvDumpUtil;->mSessionTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    return-void
.end method
