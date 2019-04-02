.class public Lcom/drew/imaging/tiff/TiffReader;
.super Ljava/lang/Object;
.source "TiffReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateTagOffset(II)I
    .locals 2
    .param p0, "ifdStartOffset"    # I
    .param p1, "entryNumber"    # I

    .prologue
    .line 384
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method public static processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V
    .locals 38
    .param p0, "handler"    # Lcom/drew/imaging/tiff/TiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "ifdOffset"    # I
    .param p4, "tiffHeaderOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drew/imaging/tiff/TiffHandler;",
            "Lcom/drew/lang/RandomAccessReader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "processedIfdOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v29, 0x0

    .line 113
    .local v29, "resetByteOrder":Ljava/lang/Boolean;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    if-gez p3, :cond_3

    .line 121
    :cond_2
    const-string v6, "Ignored IFD marked to start outside data segment"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto :goto_0

    .line 126
    :cond_3
    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v22

    .line 132
    .local v22, "dirTagCount":I
    const/16 v6, 0xff

    move/from16 v0, v22

    if-le v0, v6, :cond_4

    move/from16 v0, v22

    and-int/lit16 v6, v0, 0xff

    if-nez v6, :cond_4

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 134
    shr-int/lit8 v22, v22, 0x8

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->isMotorolaByteOrder()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 138
    :cond_4
    mul-int/lit8 v6, v22, 0xc

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v19, v6, 0x4

    .line 139
    .local v19, "dirLength":I
    add-int v6, v19, p3

    int-to-long v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 140
    const-string v6, "Illegally sized IFD"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto :goto_0

    .line 135
    .end local v19    # "dirLength":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 147
    .restart local v19    # "dirLength":I
    :cond_6
    const/16 v26, 0x0

    .line 148
    .local v26, "invalidTiffFormatCodeCount":I
    const/16 v33, 0x0

    .local v33, "tagNumber":I
    :goto_2
    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 149
    :try_start_3
    move/from16 v0, p3

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/drew/imaging/tiff/TiffReader;->calculateTagOffset(II)I

    move-result v34

    .line 152
    .local v34, "tagOffset":I
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v11

    .line 155
    .local v11, "tagId":I
    add-int/lit8 v6, v34, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v14

    .line 156
    .local v14, "formatCode":I
    invoke-static {v14}, Lcom/drew/imaging/tiff/TiffDataFormat;->fromTiffFormatCode(I)Lcom/drew/imaging/tiff/TiffDataFormat;

    move-result-object v24

    .line 159
    .local v24, "format":Lcom/drew/imaging/tiff/TiffDataFormat;
    add-int/lit8 v6, v34, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v20

    .line 162
    .local v20, "componentCount":J
    if-nez v24, :cond_9

    .line 163
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-interface {v0, v11, v14, v1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->tryCustomProcessFormat(IIJ)Ljava/lang/Long;

    move-result-object v18

    .line 164
    .local v18, "byteCountOverride":Ljava/lang/Long;
    if-nez v18, :cond_7

    .line 167
    const-string v6, "Invalid TIFF tag format code %d for tag 0x%04X"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v26, v26, 0x1

    const/4 v6, 0x5

    move/from16 v0, v26

    if-le v0, v6, :cond_8

    .line 170
    const-string v6, "Stopping processing as too many errors seen in TIFF IFD"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto/16 :goto_0

    .line 175
    :cond_7
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 181
    .end local v18    # "byteCountOverride":Ljava/lang/Long;
    .local v16, "byteCount":J
    :goto_3
    const-wide/16 v6, 0x4

    cmp-long v6, v16, v6

    if-lez v6, :cond_d

    .line 183
    add-int/lit8 v6, v34, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v30

    .line 184
    .local v30, "offsetVal":J
    add-long v6, v30, v16

    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    .line 186
    const-string v6, "Illegal TIFF tag pointer offset"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    .line 148
    .end local v16    # "byteCount":J
    .end local v30    # "offsetVal":J
    :cond_8
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_2

    .line 177
    :cond_9
    invoke-virtual/range {v24 .. v24}, Lcom/drew/imaging/tiff/TiffDataFormat;->getComponentSizeBytes()I

    move-result v6

    int-to-long v6, v6

    mul-long v16, v20, v6

    .restart local v16    # "byteCount":J
    goto :goto_3

    .line 189
    .restart local v30    # "offsetVal":J
    :cond_a
    move/from16 v0, p4

    int-to-long v6, v0

    add-long v36, v6, v30

    .line 195
    .end local v30    # "offsetVal":J
    .local v36, "tagValueOffset":J
    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v6, v36, v6

    if-ltz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v6

    cmp-long v6, v36, v6

    if-lez v6, :cond_e

    .line 196
    :cond_b
    const-string v6, "Illegal TIFF tag pointer offset"

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 246
    .end local v11    # "tagId":I
    .end local v14    # "formatCode":I
    .end local v16    # "byteCount":J
    .end local v19    # "dirLength":I
    .end local v20    # "componentCount":J
    .end local v22    # "dirTagCount":I
    .end local v24    # "format":Lcom/drew/imaging/tiff/TiffDataFormat;
    .end local v26    # "invalidTiffFormatCodeCount":I
    .end local v33    # "tagNumber":I
    .end local v34    # "tagOffset":I
    .end local v36    # "tagValueOffset":J
    :catchall_0
    move-exception v6

    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_c

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    :cond_c
    throw v6

    .line 192
    .restart local v11    # "tagId":I
    .restart local v14    # "formatCode":I
    .restart local v16    # "byteCount":J
    .restart local v19    # "dirLength":I
    .restart local v20    # "componentCount":J
    .restart local v22    # "dirTagCount":I
    .restart local v24    # "format":Lcom/drew/imaging/tiff/TiffDataFormat;
    .restart local v26    # "invalidTiffFormatCodeCount":I
    .restart local v33    # "tagNumber":I
    .restart local v34    # "tagOffset":I
    :cond_d
    add-int/lit8 v6, v34, 0x8

    int-to-long v0, v6

    move-wide/from16 v36, v0

    .restart local v36    # "tagValueOffset":J
    goto :goto_5

    .line 202
    :cond_e
    const-wide/16 v6, 0x0

    cmp-long v6, v16, v6

    if-ltz v6, :cond_f

    add-long v6, v36, v16

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_10

    .line 203
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal number of bytes for TIFF tag data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 208
    :cond_10
    const/16 v27, 0x0

    .line 209
    .local v27, "isIfdPointer":Z
    const-wide/16 v6, 0x4

    mul-long v6, v6, v20

    cmp-long v6, v16, v6

    if-nez v6, :cond_12

    .line 210
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_6
    move/from16 v0, v25

    int-to-long v6, v0

    cmp-long v6, v6, v20

    if-gez v6, :cond_12

    .line 211
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lcom/drew/imaging/tiff/TiffHandler;->tryEnterSubIfd(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 212
    const/16 v27, 0x1

    .line 213
    mul-int/lit8 v6, v25, 0x4

    int-to-long v6, v6

    add-long v6, v6, v36

    long-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v6

    add-int v32, p4, v6

    .line 214
    .local v32, "subDirOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 210
    .end local v32    # "subDirOffset":I
    :cond_11
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 220
    .end local v25    # "i":I
    :cond_12
    if-nez v27, :cond_8

    move-wide/from16 v0, v36

    long-to-int v7, v0

    move-wide/from16 v0, v16

    long-to-int v12, v0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p1

    invoke-interface/range {v6 .. v12}, Lcom/drew/imaging/tiff/TiffHandler;->customProcessTag(ILjava/util/Set;ILcom/drew/lang/RandomAccessReader;II)Z

    move-result v6

    if-nez v6, :cond_8

    .line 222
    move-wide/from16 v0, v36

    long-to-int v12, v0

    move-wide/from16 v0, v20

    long-to-int v13, v0

    move-object/from16 v10, p0

    move-object/from16 v15, p1

    invoke-static/range {v10 .. v15}, Lcom/drew/imaging/tiff/TiffReader;->processTag(Lcom/drew/imaging/tiff/TiffHandler;IIIILcom/drew/lang/RandomAccessReader;)V

    goto/16 :goto_4

    .line 227
    .end local v11    # "tagId":I
    .end local v14    # "formatCode":I
    .end local v16    # "byteCount":J
    .end local v20    # "componentCount":J
    .end local v24    # "format":Lcom/drew/imaging/tiff/TiffDataFormat;
    .end local v27    # "isIfdPointer":Z
    .end local v34    # "tagOffset":I
    .end local v36    # "tagValueOffset":J
    :cond_13
    move/from16 v0, p3

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/drew/imaging/tiff/TiffReader;->calculateTagOffset(II)I

    move-result v23

    .line 228
    .local v23, "finalTagOffset":I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v28

    .line 229
    .local v28, "nextIfdOffset":I
    if-eqz v28, :cond_16

    .line 230
    add-int v28, v28, p4

    .line 231
    move/from16 v0, v28

    int-to-long v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_14

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto/16 :goto_0

    .line 235
    :cond_14
    move/from16 v0, v28

    move/from16 v1, p3

    if-ge v0, v1, :cond_15

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto/16 :goto_0

    .line 241
    :cond_15
    :try_start_6
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->hasFollowerIfd()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v28

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 246
    :cond_16
    invoke-interface/range {p0 .. p0}, Lcom/drew/imaging/tiff/TiffHandler;->endingIFD()V

    .line 247
    if-eqz v29, :cond_0

    .line 248
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto/16 :goto_0
.end method

.method private static processTag(Lcom/drew/imaging/tiff/TiffHandler;IIIILcom/drew/lang/RandomAccessReader;)V
    .locals 8
    .param p0, "handler"    # Lcom/drew/imaging/tiff/TiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tagId"    # I
    .param p2, "tagValueOffset"    # I
    .param p3, "componentCount"    # I
    .param p4, "formatCode"    # I
    .param p5, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 259
    packed-switch p4, :pswitch_data_0

    .line 370
    const-string v2, "Invalid TIFF tag format code %d for tag 0x%04X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/drew/imaging/tiff/TiffHandler;->error(Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-virtual {p5, p2, p3}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setByteArray(I[B)V

    goto :goto_0

    .line 265
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p5, p2, p3, v2}, Lcom/drew/lang/RandomAccessReader;->getNullTerminatedStringValue(IILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setString(ILcom/drew/metadata/StringValue;)V

    goto :goto_0

    .line 268
    :pswitch_2
    if-ne p3, v6, :cond_1

    .line 269
    new-instance v2, Lcom/drew/lang/Rational;

    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    int-to-long v4, v3

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    int-to-long v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setRational(ILcom/drew/lang/Rational;)V

    goto :goto_0

    .line 270
    :cond_1
    if-le p3, v6, :cond_0

    .line 271
    new-array v0, p3, [Lcom/drew/lang/Rational;

    .line 272
    .local v0, "array":[Lcom/drew/lang/Rational;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_2

    .line 273
    new-instance v2, Lcom/drew/lang/Rational;

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, p2

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    int-to-long v4, v3

    add-int/lit8 v3, p2, 0x4

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v3, v6

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    int-to-long v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/drew/lang/Rational;-><init>(JJ)V

    aput-object v2, v0, v1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    goto :goto_0

    .line 278
    .end local v0    # "array":[Lcom/drew/lang/Rational;
    .end local v1    # "i":I
    :pswitch_3
    if-ne p3, v6, :cond_3

    .line 279
    new-instance v2, Lcom/drew/lang/Rational;

    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v4

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/drew/lang/Rational;-><init>(JJ)V

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setRational(ILcom/drew/lang/Rational;)V

    goto :goto_0

    .line 280
    :cond_3
    if-le p3, v6, :cond_0

    .line 281
    new-array v0, p3, [Lcom/drew/lang/Rational;

    .line 282
    .restart local v0    # "array":[Lcom/drew/lang/Rational;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p3, :cond_4

    .line 283
    new-instance v2, Lcom/drew/lang/Rational;

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, p2

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v4

    add-int/lit8 v3, p2, 0x4

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v3, v6

    invoke-virtual {p5, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/drew/lang/Rational;-><init>(JJ)V

    aput-object v2, v0, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 284
    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "array":[Lcom/drew/lang/Rational;
    .end local v1    # "i":I
    :pswitch_4
    if-ne p3, v6, :cond_5

    .line 289
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setFloat(IF)V

    goto/16 :goto_0

    .line 291
    :cond_5
    new-array v0, p3, [F

    .line 292
    .local v0, "array":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, p3, :cond_6

    .line 293
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result v2

    aput v2, v0, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 294
    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setFloatArray(I[F)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "array":[F
    .end local v1    # "i":I
    :pswitch_5
    if-ne p3, v6, :cond_7

    .line 299
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getDouble64(I)D

    move-result-wide v2

    invoke-interface {p0, p1, v2, v3}, Lcom/drew/imaging/tiff/TiffHandler;->setDouble(ID)V

    goto/16 :goto_0

    .line 301
    :cond_7
    new-array v0, p3, [D

    .line 302
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, p3, :cond_8

    .line 303
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getDouble64(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 304
    :cond_8
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setDoubleArray(I[D)V

    goto/16 :goto_0

    .line 308
    .end local v0    # "array":[D
    .end local v1    # "i":I
    :pswitch_6
    if-ne p3, v6, :cond_9

    .line 309
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8s(IB)V

    goto/16 :goto_0

    .line 311
    :cond_9
    new-array v0, p3, [B

    .line 312
    .local v0, "array":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, p3, :cond_a

    .line 313
    add-int v2, p2, v1

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 314
    :cond_a
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8sArray(I[B)V

    goto/16 :goto_0

    .line 318
    .end local v0    # "array":[B
    .end local v1    # "i":I
    :pswitch_7
    if-ne p3, v6, :cond_b

    .line 319
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8u(IS)V

    goto/16 :goto_0

    .line 321
    :cond_b
    new-array v0, p3, [S

    .line 322
    .local v0, "array":[S
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, p3, :cond_c

    .line 323
    add-int v2, p2, v1

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt8(I)S

    move-result v2

    aput-short v2, v0, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 324
    :cond_c
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setInt8uArray(I[S)V

    goto/16 :goto_0

    .line 328
    .end local v0    # "array":[S
    .end local v1    # "i":I
    :pswitch_8
    if-ne p3, v6, :cond_d

    .line 329
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16s(II)V

    goto/16 :goto_0

    .line 331
    :cond_d
    new-array v0, p3, [S

    .line 332
    .restart local v0    # "array":[S
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, p3, :cond_e

    .line 333
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v2

    aput-short v2, v0, v1

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 334
    :cond_e
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16sArray(I[S)V

    goto/16 :goto_0

    .line 338
    .end local v0    # "array":[S
    .end local v1    # "i":I
    :pswitch_9
    if-ne p3, v6, :cond_f

    .line 339
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16u(II)V

    goto/16 :goto_0

    .line 341
    :cond_f
    new-array v0, p3, [I

    .line 342
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, p3, :cond_10

    .line 343
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    aput v2, v0, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 344
    :cond_10
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setInt16uArray(I[I)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "array":[I
    .end local v1    # "i":I
    :pswitch_a
    if-ne p3, v6, :cond_11

    .line 350
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32s(II)V

    goto/16 :goto_0

    .line 352
    :cond_11
    new-array v0, p3, [I

    .line 353
    .restart local v0    # "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-ge v1, p3, :cond_12

    .line 354
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    aput v2, v0, v1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 355
    :cond_12
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32sArray(I[I)V

    goto/16 :goto_0

    .line 360
    .end local v0    # "array":[I
    .end local v1    # "i":I
    :pswitch_b
    if-ne p3, v6, :cond_13

    .line 361
    invoke-virtual {p5, p2}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v2

    invoke-interface {p0, p1, v2, v3}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32u(IJ)V

    goto/16 :goto_0

    .line 363
    :cond_13
    new-array v0, p3, [J

    .line 364
    .local v0, "array":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    if-ge v1, p3, :cond_14

    .line 365
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    invoke-virtual {p5, v2}, Lcom/drew/lang/RandomAccessReader;->getUInt32(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 366
    :cond_14
    invoke-interface {p0, p1, v0}, Lcom/drew/imaging/tiff/TiffHandler;->setInt32uArray(I[J)V

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_9
        :pswitch_b
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public processTiff(Lcom/drew/lang/RandomAccessReader;Lcom/drew/imaging/tiff/TiffHandler;I)V
    .locals 10
    .param p1, "reader"    # Lcom/drew/lang/RandomAccessReader;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "handler"    # Lcom/drew/imaging/tiff/TiffHandler;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tiffHeaderOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/tiff/TiffProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1, p3}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v0

    .line 55
    .local v0, "byteOrderIdentifier":S
    const/16 v4, 0x4d4d

    if-ne v0, v4, :cond_1

    .line 56
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    .line 64
    :goto_0
    add-int/lit8 v4, p3, 0x2

    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v3

    .line 65
    .local v3, "tiffMarker":I
    invoke-interface {p2, v3}, Lcom/drew/imaging/tiff/TiffHandler;->setTiffMarker(I)V

    .line 67
    add-int/lit8 v4, p3, 0x4

    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v4

    add-int v1, v4, p3

    .line 71
    .local v1, "firstIfdOffset":I
    int-to-long v4, v1

    invoke-virtual {p1}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 72
    const-string v4, "First IFD offset is beyond the end of the TIFF data segment -- trying default offset"

    invoke-interface {p2, v4}, Lcom/drew/imaging/tiff/TiffHandler;->warn(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v4, p3, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v1, v4, 0x4

    .line 77
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v2, "processedIfdOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2, p1, v2, v1, p3}, Lcom/drew/imaging/tiff/TiffReader;->processIfd(Lcom/drew/imaging/tiff/TiffHandler;Lcom/drew/lang/RandomAccessReader;Ljava/util/Set;II)V

    .line 79
    return-void

    .line 57
    .end local v1    # "firstIfdOffset":I
    .end local v2    # "processedIfdOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "tiffMarker":I
    :cond_1
    const/16 v4, 0x4949

    if-ne v0, v4, :cond_2

    .line 58
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/drew/lang/RandomAccessReader;->setMotorolaByteOrder(Z)V

    goto :goto_0

    .line 60
    :cond_2
    new-instance v4, Lcom/drew/imaging/tiff/TiffProcessingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unclear distinction between Motorola/Intel byte ordering: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/drew/imaging/tiff/TiffProcessingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
