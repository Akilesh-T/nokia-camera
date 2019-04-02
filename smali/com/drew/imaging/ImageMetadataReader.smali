.class public Lcom/drew/imaging/ImageMetadataReader;
.super Ljava/lang/Object;
.source "ImageMetadataReader.java"


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not intended for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 36
    .param p0, "args"    # [Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v2, "argList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v28, "-markdown"

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v16

    .line 191
    .local v16, "markdownFormat":Z
    const-string v28, "-hex"

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v19

    .line 193
    .local v19, "showHex":Z
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 194
    const-class v28, Lcom/drew/imaging/ImageMetadataReader;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v27

    .line 195
    .local v27, "version":Ljava/lang/String;
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "metadata-extractor version "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 197
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "Usage: java -jar metadata-extractor-%s.jar <filename> [<filename>] [-thumb] [-markdown] [-hex]"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    if-nez v27, :cond_0

    const-string v27, "a.b.c"

    .end local v27    # "version":Ljava/lang/String;
    :cond_0
    aput-object v27, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/System;->exit(I)V

    .line 201
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 202
    .local v11, "filePath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 203
    .local v20, "startTime":J
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v9, "file":Ljava/io/File;
    if-nez v16, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 206
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "\n***** PROCESSING: %s%n%n"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v11, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 208
    :cond_3
    const/16 v17, 0x0

    .line 210
    .local v17, "metadata":Lcom/drew/metadata/Metadata;
    :try_start_0
    invoke-static {v9}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 215
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    sub-long v24, v28, v20

    .line 216
    .local v24, "took":J
    if-nez v16, :cond_4

    .line 217
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "Processed %.3f MB file in %.2f ms%n%n"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4130000000000000L    # 1048576.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x412e848000000000L    # 1000000.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 219
    :cond_4
    if-eqz v16, :cond_5

    .line 220
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "fileName":Ljava/lang/String;
    invoke-static {v11}, Lcom/drew/lang/StringUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 222
    .local v26, "urlName":Ljava/lang/String;
    const-class v28, Lcom/drew/metadata/exif/ExifIFD0Directory;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v8

    check-cast v8, Lcom/drew/metadata/exif/ExifIFD0Directory;

    .line 223
    .local v8, "exifIFD0Directory":Lcom/drew/metadata/exif/ExifIFD0Directory;
    if-nez v8, :cond_8

    const-string v15, ""

    .line 224
    .local v15, "make":Ljava/lang/String;
    :goto_1
    if-nez v8, :cond_9

    const-string v18, ""

    .line 225
    .local v18, "model":Ljava/lang/String;
    :goto_2
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 226
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "---"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 228
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "# %s - %s%n"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v15, v30, v31

    const/16 v31, 0x1

    aput-object v18, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 229
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 230
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "<a href=\"https://raw.githubusercontent.com/drewnoakes/metadata-extractor-images/master/%s\">%n"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v26, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 231
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "<img src=\"https://raw.githubusercontent.com/drewnoakes/metadata-extractor-images/master/%s\" width=\"300\"/><br/>%n"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v26, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 232
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "</a>"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintStream;->println()V

    .line 235
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "Directory | Tag Id | Tag Name | Extracted Value"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, ":--------:|-------:|----------|----------------"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    .end local v8    # "exifIFD0Directory":Lcom/drew/metadata/exif/ExifIFD0Directory;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v15    # "make":Ljava/lang/String;
    .end local v18    # "model":Ljava/lang/String;
    .end local v26    # "urlName":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/drew/metadata/Metadata;->getDirectories()Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/drew/metadata/Directory;

    .line 241
    .local v4, "directory":Lcom/drew/metadata/Directory;
    invoke-virtual {v4}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "directoryName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/drew/metadata/Directory;->getTags()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/drew/metadata/Tag;

    .line 243
    .local v22, "tag":Lcom/drew/metadata/Tag;
    invoke-virtual/range {v22 .. v22}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v23

    .line 244
    .local v23, "tagName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "description":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x400

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    .line 248
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x0

    const/16 v30, 0x400

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "..."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    :cond_7
    if-eqz v16, :cond_a

    .line 252
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "%s|0x%s|%s|%s%n"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v5, v30, v31

    const/16 v31, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    aput-object v23, v30, v31

    const/16 v31, 0x3

    aput-object v3, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 211
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "directory":Lcom/drew/metadata/Directory;
    .end local v5    # "directoryName":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v22    # "tag":Lcom/drew/metadata/Tag;
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v24    # "took":J
    :catch_0
    move-exception v6

    .line 212
    .local v6, "e":Ljava/lang/Exception;
    sget-object v28, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 213
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 223
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "exifIFD0Directory":Lcom/drew/metadata/exif/ExifIFD0Directory;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v24    # "took":J
    .restart local v26    # "urlName":Ljava/lang/String;
    :cond_8
    const/16 v28, 0x10f

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 224
    .restart local v15    # "make":Ljava/lang/String;
    :cond_9
    const/16 v28, 0x110

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/drew/metadata/exif/ExifIFD0Directory;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 259
    .end local v8    # "exifIFD0Directory":Lcom/drew/metadata/exif/ExifIFD0Directory;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v15    # "make":Ljava/lang/String;
    .end local v26    # "urlName":Ljava/lang/String;
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v4    # "directory":Lcom/drew/metadata/Directory;
    .restart local v5    # "directoryName":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v22    # "tag":Lcom/drew/metadata/Tag;
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_a
    if-eqz v19, :cond_b

    .line 260
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "[%s - %s] %s = %s%n"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v5, v30, v31

    const/16 v31, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/drew/metadata/Tag;->getTagTypeHex()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    aput-object v23, v30, v31

    const/16 v31, 0x3

    aput-object v3, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_3

    .line 262
    :cond_b
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "[%s] %s = %s%n"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v5, v30, v31

    const/16 v31, 0x1

    aput-object v23, v30, v31

    const/16 v31, 0x2

    aput-object v3, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_3

    .line 268
    .end local v3    # "description":Ljava/lang/String;
    .end local v22    # "tag":Lcom/drew/metadata/Tag;
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_c
    invoke-virtual {v4}, Lcom/drew/metadata/Directory;->getErrors()Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 269
    .local v7, "error":Ljava/lang/String;
    sget-object v28, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ERROR: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 272
    .end local v4    # "directory":Lcom/drew/metadata/Directory;
    .end local v5    # "directoryName":Ljava/lang/String;
    .end local v7    # "error":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "metadata":Lcom/drew/metadata/Metadata;
    .end local v20    # "startTime":J
    .end local v24    # "took":J
    :cond_d
    return-void
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 161
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 163
    .local v1, "metadata":Lcom/drew/metadata/Metadata;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 165
    new-instance v2, Lcom/drew/metadata/file/FileMetadataReader;

    invoke-direct {v2}, Lcom/drew/metadata/file/FileMetadataReader;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/drew/metadata/file/FileMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    .line 166
    return-object v1

    .line 163
    .end local v1    # "metadata":Lcom/drew/metadata/Metadata;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public static readMetadata(Ljava/io/InputStream;J)Lcom/drew/metadata/Metadata;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "streamLength"    # J
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/ImageProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    instance-of v2, p0, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/io/BufferedInputStream;

    .end local p0    # "inputStream":Ljava/io/InputStream;
    move-object v0, p0

    .line 108
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_0
    invoke-static {v0}, Lcom/drew/imaging/FileTypeDetector;->detectFileType(Ljava/io/BufferedInputStream;)Lcom/drew/imaging/FileType;

    move-result-object v1

    .line 110
    .local v1, "fileType":Lcom/drew/imaging/FileType;
    sget-object v2, Lcom/drew/imaging/FileType;->Jpeg:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_1

    .line 111
    invoke-static {v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    .line 143
    :goto_1
    return-object v2

    .line 104
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v1    # "fileType":Lcom/drew/imaging/FileType;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 113
    .end local p0    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "fileType":Lcom/drew/imaging/FileType;
    :cond_1
    sget-object v2, Lcom/drew/imaging/FileType;->Tiff:Lcom/drew/imaging/FileType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/drew/imaging/FileType;->Arw:Lcom/drew/imaging/FileType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/drew/imaging/FileType;->Cr2:Lcom/drew/imaging/FileType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/drew/imaging/FileType;->Nef:Lcom/drew/imaging/FileType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/drew/imaging/FileType;->Orf:Lcom/drew/imaging/FileType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/drew/imaging/FileType;->Rw2:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_3

    .line 119
    :cond_2
    new-instance v2, Lcom/drew/lang/RandomAccessStreamReader;

    const/16 v3, 0x800

    invoke-direct {v2, v0, v3, p1, p2}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;IJ)V

    invoke-static {v2}, Lcom/drew/imaging/tiff/TiffMetadataReader;->readMetadata(Lcom/drew/lang/RandomAccessReader;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 121
    :cond_3
    sget-object v2, Lcom/drew/imaging/FileType;->Psd:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_4

    .line 122
    invoke-static {v0}, Lcom/drew/imaging/psd/PsdMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 124
    :cond_4
    sget-object v2, Lcom/drew/imaging/FileType;->Png:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_5

    .line 125
    invoke-static {v0}, Lcom/drew/imaging/png/PngMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 127
    :cond_5
    sget-object v2, Lcom/drew/imaging/FileType;->Bmp:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_6

    .line 128
    invoke-static {v0}, Lcom/drew/imaging/bmp/BmpMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 130
    :cond_6
    sget-object v2, Lcom/drew/imaging/FileType;->Gif:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_7

    .line 131
    invoke-static {v0}, Lcom/drew/imaging/gif/GifMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 133
    :cond_7
    sget-object v2, Lcom/drew/imaging/FileType;->Ico:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_8

    .line 134
    invoke-static {v0}, Lcom/drew/imaging/ico/IcoMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 136
    :cond_8
    sget-object v2, Lcom/drew/imaging/FileType;->Pcx:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_9

    .line 137
    invoke-static {v0}, Lcom/drew/imaging/pcx/PcxMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 139
    :cond_9
    sget-object v2, Lcom/drew/imaging/FileType;->Riff:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_a

    .line 140
    invoke-static {v0}, Lcom/drew/imaging/webp/WebpMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 142
    :cond_a
    sget-object v2, Lcom/drew/imaging/FileType;->Raf:Lcom/drew/imaging/FileType;

    if-ne v1, v2, :cond_b

    .line 143
    invoke-static {v0}, Lcom/drew/imaging/raf/RafMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    goto :goto_1

    .line 145
    :cond_b
    new-instance v2, Lcom/drew/imaging/ImageProcessingException;

    const-string v3, "File format is not supported"

    invoke-direct {v2, v3}, Lcom/drew/imaging/ImageProcessingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
