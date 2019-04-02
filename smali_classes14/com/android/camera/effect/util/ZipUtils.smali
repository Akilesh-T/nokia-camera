.class public Lcom/android/camera/effect/util/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZipUtils"

.field public static final ZIP:Ljava/lang/String; = ".zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static GetFileList(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "bContainFolder"    # Z
    .param p2, "bContainFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 241
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v4, ""

    .line 242
    .local v4, "szName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_2

    .line 243
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 247
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "folder":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 249
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v2    # "folder":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "file":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 254
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 259
    return-object v1
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "outPathString"    # Ljava/lang/String;
    .param p2, "szName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 138
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_3

    .line 142
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 145
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 148
    .end local v2    # "folder":Ljava/io/File;
    :cond_0
    const-string v7, "ZipUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 151
    const-string v7, "ZipUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create the file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 156
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 160
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 162
    invoke-virtual {v5, v0, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 163
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 168
    .end local v0    # "buffer":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 169
    return-void
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 47
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v2, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "zFile":Lnet/lingala/zip4j/core/ZipFile;
    invoke-virtual {v2}, Lnet/lingala/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    .end local v2    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_0
    return v3

    .line 51
    .restart local v2    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 55
    :cond_1
    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v3, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "destDir":Ljava/io/File;
    .end local v2    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    invoke-virtual {v1}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    goto :goto_0
.end method

.method private static ZipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 9
    .param p0, "folderString"    # Ljava/lang/String;
    .param p1, "fileString"    # Ljava/lang/String;
    .param p2, "zipOutputSteam"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 202
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 203
    .local v4, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 205
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 206
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 208
    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 214
    .end local v0    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "fileList":[Ljava/lang/String;
    array-length v7, v2

    if-gtz v7, :cond_4

    .line 217
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 219
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 222
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/android/camera/effect/util/ZipUtils;->ZipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static ZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "srcFileString"    # Ljava/lang/String;
    .param p1, "zipFileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v1, "outZip":Ljava/util/zip/ZipOutputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/effect/util/ZipUtils;->ZipFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 185
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 186
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 187
    return-void
.end method

.method public static getUnzipFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".zip"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
