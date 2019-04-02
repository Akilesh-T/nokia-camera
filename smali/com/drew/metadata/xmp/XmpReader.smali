.class public Lcom/drew/metadata/xmp/XmpReader;
.super Ljava/lang/Object;
.source "XmpReader.java"

# interfaces
.implements Lcom/drew/imaging/jpeg/JpegSegmentMetadataReader;


# static fields
.field private static final ATTRIBUTE_EXTENDED_XMP:Ljava/lang/String; = "xmpNote:HasExtendedXMP"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTENDED_XMP_GUID_LENGTH:I = 0x20

.field private static final EXTENDED_XMP_INT_LENGTH:I = 0x4

.field private static final SCHEMA_XMP_NOTES:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private static final XMP_EXTENSION_JPEG_PREAMBLE:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private static final XMP_JPEG_PREAMBLE:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtendedXMPGUID(Lcom/drew/metadata/Metadata;)Ljava/lang/String;
    .locals 10
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 230
    const-class v7, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-virtual {p0, v7}, Lcom/drew/metadata/Metadata;->getDirectoriesOfType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v4

    .line 232
    .local v4, "xmpDirectories":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/drew/metadata/xmp/XmpDirectory;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/xmp/XmpDirectory;

    .line 233
    .local v0, "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    invoke-virtual {v0}, Lcom/drew/metadata/xmp/XmpDirectory;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    .line 236
    .local v5, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    const-string v7, "http://ns.adobe.com/xmp/note/"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v2

    .line 237
    .local v2, "itr":Lcom/adobe/xmp/XMPIterator;
    if-eqz v2, :cond_0

    .line 240
    :cond_1
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 242
    .local v3, "pi":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    const-string v7, "xmpNote:HasExtendedXMP"

    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 251
    .end local v0    # "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    .end local v2    # "itr":Lcom/adobe/xmp/XMPIterator;
    .end local v3    # "pi":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .end local v5    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :cond_2
    return-object v6

    .line 246
    .restart local v0    # "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    .restart local v5    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static processExtendedXMPChunk(Lcom/drew/metadata/Metadata;[BLjava/lang/String;[B)[B
    .locals 15
    .param p0, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "segmentBytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "extendedXMPGUID"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "extendedXMPBuffer"    # [B
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 264
    const-string v11, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    .line 265
    .local v5, "extensionPreambleLength":I
    move-object/from16 v0, p1

    array-length v9, v0

    .line 266
    .local v9, "segmentLength":I
    add-int/lit8 v11, v5, 0x20

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v10, v11, 0x4

    .line 268
    .local v10, "totalOffset":I
    if-lt v9, v10, :cond_1

    .line 279
    :try_start_0
    new-instance v7, Lcom/drew/lang/SequentialByteArrayReader;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 280
    .local v7, "reader":Lcom/drew/lang/SequentialReader;
    int-to-long v12, v5

    invoke-virtual {v7, v12, v13}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 281
    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "segmentGUID":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 284
    invoke-virtual {v7}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v12

    long-to-int v6, v12

    .line 285
    .local v6, "fullLength":I
    invoke-virtual {v7}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v12

    long-to-int v2, v12

    .line 287
    .local v2, "chunkOffset":I
    if-nez p3, :cond_0

    .line 288
    new-array v0, v6, [B

    move-object/from16 p3, v0

    .line 290
    :cond_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ne v11, v6, :cond_2

    .line 291
    sub-int v11, v9, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v10, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    .end local v2    # "chunkOffset":I
    .end local v6    # "fullLength":I
    .end local v7    # "reader":Lcom/drew/lang/SequentialReader;
    .end local v8    # "segmentGUID":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p3

    .line 293
    .restart local v2    # "chunkOffset":I
    .restart local v6    # "fullLength":I
    .restart local v7    # "reader":Lcom/drew/lang/SequentialReader;
    .restart local v8    # "segmentGUID":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {v3}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    .line 294
    .local v3, "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    const-string v11, "Inconsistent length for the Extended XMP buffer: %d instead of %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v2    # "chunkOffset":I
    .end local v3    # "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    .end local v6    # "fullLength":I
    .end local v7    # "reader":Lcom/drew/lang/SequentialReader;
    .end local v8    # "segmentGUID":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 299
    .local v4, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {v3}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    .line 300
    .restart local v3    # "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0
.end method


# virtual methods
.method public extract(Lcom/drew/metadata/StringValue;Lcom/drew/metadata/Metadata;)V
    .locals 2
    .param p1, "xmpString"    # Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 198
    return-void
.end method

.method public extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1, "xmpString"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/xmp/XmpReader;->extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 188
    return-void
.end method

.method public extract(Ljava/lang/String;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 5
    .param p1, "xmpString"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "parentDirectory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 207
    new-instance v0, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {v0}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    .line 209
    .local v0, "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {v0, p3}, Lcom/drew/metadata/xmp/XmpDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 213
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 214
    .local v2, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    invoke-virtual {v0, v2}, Lcom/drew/metadata/xmp/XmpDirectory;->setXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :goto_0
    invoke-virtual {v0}, Lcom/drew/metadata/xmp/XmpDirectory;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    invoke-virtual {p2, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 221
    :cond_1
    return-void

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error processing XMP data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extract([BIILcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 6
    .param p1, "xmpBytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "parentDirectory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    new-instance v1, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-direct {v1}, Lcom/drew/metadata/xmp/XmpDirectory;-><init>()V

    .line 157
    .local v1, "directory":Lcom/drew/metadata/xmp/XmpDirectory;
    if-eqz p5, :cond_0

    .line 158
    invoke-virtual {v1, p5}, Lcom/drew/metadata/xmp/XmpDirectory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 164
    :cond_0
    if-nez p2, :cond_2

    :try_start_0
    array-length v4, p1

    if-ne p3, v4, :cond_2

    .line 165
    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object v3

    .line 171
    .local v3, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :goto_0
    invoke-virtual {v1, v3}, Lcom/drew/metadata/xmp/XmpDirectory;->setXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v3    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :goto_1
    invoke-virtual {v1}, Lcom/drew/metadata/xmp/XmpDirectory;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    invoke-virtual {p4, v1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 178
    :cond_1
    return-void

    .line 167
    :cond_2
    :try_start_1
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([BII)V

    .line 168
    .local v0, "buffer":Lcom/adobe/xmp/impl/ByteBuffer;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/XMPMetaFactory;->parse(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    goto :goto_0

    .line 172
    .end local v0    # "buffer":Lcom/adobe/xmp/impl/ByteBuffer;
    .end local v3    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error processing XMP data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/drew/metadata/xmp/XmpDirectory;->addError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public extract([BLcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1, "xmpBytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 136
    return-void
.end method

.method public extract([BLcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 6
    .param p1, "xmpBytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "parentDirectory"    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/drew/metadata/xmp/XmpReader;->extract([BIILcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 146
    return-void
.end method

.method public getSegmentTypes()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/drew/imaging/jpeg/JpegSegmentType;->APP1:Lcom/drew/imaging/jpeg/JpegSegmentType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readJpegSegments(Ljava/lang/Iterable;Lcom/drew/metadata/Metadata;Lcom/drew/imaging/jpeg/JpegSegmentType;)V
    .locals 11
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "segmentType"    # Lcom/drew/imaging/jpeg/JpegSegmentType;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[B>;",
            "Lcom/drew/metadata/Metadata;",
            "Lcom/drew/imaging/jpeg/JpegSegmentType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "segments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    const/4 v10, 0x0

    .line 90
    const-string v7, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 91
    .local v4, "preambleLength":I
    const-string v7, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 92
    .local v2, "extensionPreambleLength":I
    const/4 v1, 0x0

    .line 93
    .local v1, "extendedXMPGUID":Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "extendedXMPBuffer":[B
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 97
    .local v5, "segmentBytes":[B
    array-length v7, v5

    if-lt v7, v4, :cond_2

    .line 101
    const-string v7, "http://ns.adobe.com/xap/1.0/\u0000"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v10, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "XMP"

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-direct {v8, v5, v10, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    :cond_1
    array-length v7, v5

    sub-int/2addr v7, v4

    new-array v6, v7, [B

    .line 105
    .local v6, "xmlBytes":[B
    array-length v7, v6

    invoke-static {v5, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-virtual {p0, v6, p2}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    .line 108
    invoke-static {p2}, Lcom/drew/metadata/xmp/XmpReader;->getExtendedXMPGUID(Lcom/drew/metadata/Metadata;)Ljava/lang/String;

    move-result-object v1

    .line 109
    goto :goto_0

    .line 114
    .end local v6    # "xmlBytes":[B
    :cond_2
    if-eqz v1, :cond_0

    array-length v7, v5

    if-lt v7, v2, :cond_0

    const-string v7, "http://ns.adobe.com/xmp/extension/\u0000"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v10, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    invoke-static {p2, v5, v1, v0}, Lcom/drew/metadata/xmp/XmpReader;->processExtendedXMPChunk(Lcom/drew/metadata/Metadata;[BLjava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 123
    .end local v5    # "segmentBytes":[B
    :cond_3
    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {p0, v0, p2}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    .line 126
    :cond_4
    return-void
.end method
