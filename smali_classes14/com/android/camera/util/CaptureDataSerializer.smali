.class public Lcom/android/camera/util/CaptureDataSerializer;
.super Ljava/lang/Object;
.source "CaptureDataSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/CaptureDataSerializer$Writeable;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureDataSerilzr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/CaptureDataSerializer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/camera/util/CaptureDataSerializer;->metadataValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dumpMetadata(Lcom/android/camera/util/CaptureDataSerializer$Writeable;Ljava/io/Writer;)V
    .locals 4
    .param p0, "metadata"    # Lcom/android/camera/util/CaptureDataSerializer$Writeable;
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 170
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/camera/util/CaptureDataSerializer$Writeable;->write(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/util/CaptureDataSerializer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "dumpMetadata - Failed to close writer."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 172
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/android/camera/util/CaptureDataSerializer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "dumpMetadata - Failed to dump metadata"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 178
    :catch_2
    move-exception v0

    .line 179
    sget-object v1, Lcom/android/camera/util/CaptureDataSerializer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "dumpMetadata - Failed to close writer."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 175
    if-eqz p1, :cond_1

    .line 176
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 180
    :cond_1
    :goto_1
    throw v1

    .line 178
    :catch_3
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/camera/util/CaptureDataSerializer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "dumpMetadata - Failed to close writer."

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static dumpMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/io/Writer;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "metadata"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 92
    new-instance v0, Lcom/android/camera/util/CaptureDataSerializer$1;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/util/CaptureDataSerializer$1;-><init>(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/String;)V

    .line 106
    .local v0, "writeable":Lcom/android/camera/util/CaptureDataSerializer$Writeable;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, v1}, Lcom/android/camera/util/CaptureDataSerializer;->dumpMetadata(Lcom/android/camera/util/CaptureDataSerializer$Writeable;Ljava/io/Writer;)V

    .line 107
    return-void
.end method

.method private static dumpMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Ljava/io/Writer;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "metadata"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 115
    new-instance v0, Lcom/android/camera/util/CaptureDataSerializer$2;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/util/CaptureDataSerializer$2;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    .line 129
    .local v0, "writeable":Lcom/android/camera/util/CaptureDataSerializer$Writeable;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, v1}, Lcom/android/camera/util/CaptureDataSerializer;->dumpMetadata(Lcom/android/camera/util/CaptureDataSerializer$Writeable;Ljava/io/Writer;)V

    .line 130
    return-void
.end method

.method private static metadataValueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const-string v4, "<null>"

    .line 160
    :goto_0
    return-object v4

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 141
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 142
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/util/CaptureDataSerializer;->metadataValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_1

    .line 146
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "item":Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 155
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v3    # "length":I
    :cond_3
    instance-of v4, p0, Landroid/hardware/camera2/params/LensShadingMap;

    if-eqz v4, :cond_4

    .line 156
    check-cast p0, Landroid/hardware/camera2/params/LensShadingMap;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/camera/util/CaptureDataSerializer;->toString(Landroid/hardware/camera2/params/LensShadingMap;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 157
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v4, p0, Landroid/util/Pair;

    if-eqz v4, :cond_5

    .line 158
    check-cast p0, Landroid/util/Pair;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/camera/util/CaptureDataSerializer;->toString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 160
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static toFile(Ljava/lang/String;Landroid/hardware/camera2/CameraMetadata;Ljava/io/File;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraMetadata",
            "<*>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "metadata":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<*>;"
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 71
    .local v1, "writer":Ljava/io/FileWriter;
    instance-of v2, p1, Landroid/hardware/camera2/CaptureRequest;

    if-eqz v2, :cond_0

    .line 72
    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    .end local p1    # "metadata":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<*>;"
    invoke-static {p0, p1, v1}, Lcom/android/camera/util/CaptureDataSerializer;->dumpMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/io/Writer;)V

    .line 80
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 84
    .end local v1    # "writer":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 73
    .restart local v1    # "writer":Ljava/io/FileWriter;
    .restart local p1    # "metadata":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<*>;"
    :cond_0
    instance-of v2, p1, Landroid/hardware/camera2/CaptureResult;

    if-eqz v2, :cond_1

    .line 74
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    .end local p1    # "metadata":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<*>;"
    invoke-static {p0, p1, v1}, Lcom/android/camera/util/CaptureDataSerializer;->dumpMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/io/IOException;
    sget-object v2, Lcom/android/camera/util/CaptureDataSerializer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not write capture data to file."

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 76
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    .restart local p1    # "metadata":Landroid/hardware/camera2/CameraMetadata;, "Landroid/hardware/camera2/CameraMetadata<*>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot generate debug data from type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static toString(Landroid/hardware/camera2/params/LensShadingMap;)Ljava/lang/String;
    .locals 12
    .param p0, "lensShading"    # Landroid/hardware/camera2/params/LensShadingMap;

    .prologue
    const/4 v11, 0x3

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v8, "str":Ljava/lang/StringBuilder;
    const-string v9, "LensShadingMap{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "R"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "G_even"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "G_odd"

    aput-object v10, v2, v9

    const-string v9, "B"

    aput-object v9, v2, v11

    .line 189
    .local v2, "channelName":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v6

    .line 190
    .local v6, "numRows":I
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result v5

    .line 191
    .local v5, "numCols":I
    const/4 v4, 0x4

    .line 193
    .local v4, "numChannels":I
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 194
    aget-object v9, v2, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v9, ":("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v7, 0x0

    .local v7, "r":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 198
    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    if-ge v0, v5, :cond_1

    .line 200
    invoke-virtual {p0, v1, v0, v7}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v3

    .line 201
    .local v3, "gain":F
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v9, v5, -0x1

    if-ge v0, v9, :cond_0

    .line 203
    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    .end local v3    # "gain":F
    :cond_1
    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_2

    .line 208
    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "c":I
    :cond_3
    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    if-ge v1, v11, :cond_4

    .line 214
    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v7    # "r":I
    :cond_5
    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static toString(Landroid/util/Pair;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pair: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/camera/util/CaptureDataSerializer;->metadataValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 224
    invoke-static {v1}, Lcom/android/camera/util/CaptureDataSerializer;->metadataValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method public static toString(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "metadata"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 58
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-static {p0, p1, v0}, Lcom/android/camera/util/CaptureDataSerializer;->dumpMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/io/Writer;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
