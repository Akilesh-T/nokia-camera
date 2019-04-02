.class public Landroid/support/v8/renderscript/ScriptC;
.super Landroid/support/v8/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 4
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    invoke-direct {p0, v2, v3, p1}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 59
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v0

    .line 60
    .local v0, "id":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptC;->setID(J)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    .prologue
    const-wide/16 v4, 0x0

    .line 75
    invoke-direct {p0, v4, v5, p1}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .local v0, "id":J
    sget v2, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 78
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    .line 82
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 83
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_0
    invoke-static {p1, p2, p4}, Landroid/support/v8/renderscript/ScriptC;->internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptC;->setID(J)V

    .line 86
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 14
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    .line 91
    const-class v10, Landroid/support/v8/renderscript/ScriptC;

    monitor-enter v10

    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 94
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v6, v9, [B

    .line 95
    .local v6, "pgm":[B
    const/4 v7, 0x0

    .line 97
    .local v7, "pgmLength":I
    :goto_0
    array-length v9, v6

    sub-int v1, v9, v7

    .line 98
    .local v1, "bytesLeft":I
    if-nez v1, :cond_0

    .line 99
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 100
    .local v0, "buf2":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    move-object v6, v0

    .line 102
    array-length v9, v6

    sub-int v1, v9, v7

    .line 104
    .end local v0    # "buf2":[B
    :cond_0
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 105
    .local v2, "bytesRead":I
    if-gtz v2, :cond_1

    .line 111
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "cachePath":Ljava/lang/String;
    invoke-virtual {p0, v8, v3, v6, v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    monitor-exit v10

    return-wide v12

    .line 108
    .end local v3    # "cachePath":Ljava/lang/String;
    .end local v8    # "resName":Ljava/lang/String;
    :cond_1
    add-int/2addr v7, v2

    .line 109
    goto :goto_0

    .line 111
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "pgm":[B
    .end local v7    # "pgmLength":I
    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    :catch_0
    move-exception v4

    .line 114
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private static declared-synchronized internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 6
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    .prologue
    .line 127
    const-class v2, Landroid/support/v8/renderscript/ScriptC;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cachePath":Ljava/lang/String;
    array-length v1, p2

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .line 127
    .end local v0    # "cachePath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
