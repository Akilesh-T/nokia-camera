.class public Lcom/android/camera/gdepth/WriteDepthFile;
.super Ljava/lang/Object;
.source "WriteDepthFile.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private isMixData:Z

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "WriteDepthFile"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "mWidth"    # I
    .param p2, "mHeight"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/gdepth/WriteDepthFile;->isMixData:Z

    .line 35
    iput p1, p0, Lcom/android/camera/gdepth/WriteDepthFile;->mWidth:I

    .line 36
    iput p2, p0, Lcom/android/camera/gdepth/WriteDepthFile;->mHeight:I

    .line 37
    return-void
.end method

.method public static addGdepth(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;II)Z
    .locals 16
    .param p0, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1}, Lcom/android/camera/gdepth/GDepth;->createGDepth([BII)Lcom/android/camera/gdepth/GDepth;

    move-result-object v7

    .line 119
    .local v7, "gDepth":Lcom/android/camera/gdepth/GDepth;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    invoke-virtual {v7, v14, v15}, Lcom/android/camera/gdepth/GDepth;->setTouchX(J)V

    .line 120
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    invoke-virtual {v7, v14, v15}, Lcom/android/camera/gdepth/GDepth;->setTouchY(J)V

    .line 122
    const/4 v12, 0x0

    .line 124
    .local v12, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v7, v0, v1}, Lcom/android/camera/gdepth/WriteDepthFile;->createXMPMeta(Lcom/android/camera/gdepth/GDepth;II)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 129
    :goto_0
    new-instance v5, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v5}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 130
    .local v5, "exifInterface":Lcom/android/camera/exif/ExifInterface;
    sget v13, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    invoke-virtual {v5, v13}, Lcom/android/camera/exif/ExifInterface;->updateExif([B)[B

    move-result-object v9

    .line 132
    .local v9, "imagedata":[B
    new-instance v8, Lcom/android/camera/gdepth/GImage;

    invoke-direct {v8, v9}, Lcom/android/camera/gdepth/GImage;-><init>([B)V

    .line 133
    .local v8, "gImage":Lcom/android/camera/gdepth/GImage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-eqz v13, :cond_0

    .line 136
    :try_start_1
    const-string v13, "http://ns.google.com/photos/1.0/image/"

    const-string v14, "Mime"

    invoke-virtual {v8}, Lcom/android/camera/gdepth/GImage;->getMime()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v13

    const-string v14, "http://ns.google.com/photos/1.0/camera/"

    const-string v15, "GCamera"

    invoke-interface {v13, v14, v15}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    const-string v13, "http://ns.google.com/photos/1.0/camera/"

    const-string v14, "SpecialTypeID"

    const-string v15, "DEPTH_TYPE"

    invoke-interface {v12, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 150
    .local v6, "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_2
    const-string v13, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDualSight=\'http://ns.google.com/photos/1.0/camera/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v13}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v6

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v13, :cond_1

    .line 153
    const-string v13, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v14, "Data"

    invoke-virtual {v7}, Lcom/android/camera/gdepth/GDepth;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-eqz v13, :cond_2

    .line 156
    const-string v13, "http://ns.google.com/photos/1.0/image/"

    const-string v14, "Data"

    invoke-virtual {v8}, Lcom/android/camera/gdepth/GImage;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    :cond_2
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/camera/gdepth/WriteDepthFile;->image2Bytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 162
    .local v10, "newData":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p1

    invoke-static {v2, v0, v12, v6}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v11

    .line 164
    .local v11, "success":Z
    sget-object v13, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "success:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    return v11

    .line 125
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v6    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    .end local v8    # "gImage":Lcom/android/camera/gdepth/GImage;
    .end local v9    # "imagedata":[B
    .end local v10    # "newData":[B
    .end local v11    # "success":Z
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Lcom/adobe/xmp/XMPException;
    sget-object v13, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v3}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto/16 :goto_0

    .line 142
    .end local v3    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v5    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .restart local v8    # "gImage":Lcom/android/camera/gdepth/GImage;
    .restart local v9    # "imagedata":[B
    :catch_1
    move-exception v3

    .line 143
    .restart local v3    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v3}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v3    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v6    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_2
    move-exception v4

    .line 159
    .local v4, "exception":Lcom/adobe/xmp/XMPException;
    sget-object v13, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "create extended XMPMeta error"

    invoke-static {v13, v14, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static addGdepth(Lcom/android/camera/mpo/Bokeh_Info;II)[B
    .locals 16
    .param p0, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/android/camera/gdepth/GDepth;->createGDepth([BII)Lcom/android/camera/gdepth/GDepth;

    move-result-object v8

    .line 76
    .local v8, "gDepth":Lcom/android/camera/gdepth/GDepth;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    invoke-virtual {v8, v14, v15}, Lcom/android/camera/gdepth/GDepth;->setTouchX(J)V

    .line 77
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    invoke-virtual {v8, v14, v15}, Lcom/android/camera/gdepth/GDepth;->setTouchY(J)V

    .line 79
    const/4 v12, 0x0

    .line 81
    .local v12, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v8, v0, v1}, Lcom/android/camera/gdepth/WriteDepthFile;->createXMPMeta(Lcom/android/camera/gdepth/GDepth;II)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 86
    :goto_0
    new-instance v6, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v6}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 87
    .local v6, "exifInterface":Lcom/android/camera/exif/ExifInterface;
    sget v13, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    invoke-virtual {v6, v13}, Lcom/android/camera/exif/ExifInterface;->updateExif([B)[B

    move-result-object v10

    .line 89
    .local v10, "imagedata":[B
    new-instance v9, Lcom/android/camera/gdepth/GImage;

    invoke-direct {v9, v10}, Lcom/android/camera/gdepth/GImage;-><init>([B)V

    .line 90
    .local v9, "gImage":Lcom/android/camera/gdepth/GImage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-eqz v13, :cond_0

    .line 92
    :try_start_1
    const-string v13, "http://ns.google.com/photos/1.0/image/"

    const-string v14, "Mime"

    invoke-virtual {v9}, Lcom/android/camera/gdepth/GImage;->getMime()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_0
    :goto_1
    const/4 v7, 0x0

    .line 99
    .local v7, "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_2
    const-string v13, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDualSight=\'http://ns.google.com/photos/1.0/camera/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v13}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v7

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v13, :cond_1

    .line 101
    const-string v13, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v14, "Data"

    invoke-virtual {v8}, Lcom/android/camera/gdepth/GDepth;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-eqz v13, :cond_2

    .line 105
    const-string v13, "http://ns.google.com/photos/1.0/image/"

    const-string v14, "Data"

    invoke-virtual {v9}, Lcom/android/camera/gdepth/GImage;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v13, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    :cond_2
    :goto_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v3, v12, v7}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v11

    .line 113
    .local v11, "success":Z
    sget-object v13, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "success:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    return-object v13

    .line 82
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v7    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    .end local v9    # "gImage":Lcom/android/camera/gdepth/GImage;
    .end local v10    # "imagedata":[B
    .end local v11    # "success":Z
    :catch_0
    move-exception v4

    .line 83
    .local v4, "e":Lcom/adobe/xmp/XMPException;
    sget-object v13, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v4}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto/16 :goto_0

    .line 93
    .end local v4    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v6    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .restart local v9    # "gImage":Lcom/android/camera/gdepth/GImage;
    .restart local v10    # "imagedata":[B
    :catch_1
    move-exception v4

    .line 94
    .restart local v4    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v4}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v4    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v7    # "extendXmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_2
    move-exception v5

    .line 108
    .local v5, "exception":Lcom/adobe/xmp/XMPException;
    sget-object v13, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "create extended XMPMeta error"

    invoke-static {v13, v14, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static createXMPMeta(Lcom/android/camera/gdepth/GDepth;II)Lcom/adobe/xmp/XMPMeta;
    .locals 6
    .param p0, "gDepth"    # Lcom/android/camera/gdepth/GDepth;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v1, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDualSight=\'http://ns.google.com/photos/1.0/camera/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 186
    .local v0, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "Mime"

    invoke-virtual {p0}, Lcom/android/camera/gdepth/GDepth;->getMime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "Near"

    invoke-virtual {p0}, Lcom/android/camera/gdepth/GDepth;->getNear()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "Far"

    invoke-virtual {p0}, Lcom/android/camera/gdepth/GDepth;->getFar()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "Format"

    invoke-virtual {p0}, Lcom/android/camera/gdepth/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "ImageWidth"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "ImageHeight"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "TouchX"

    invoke-virtual {p0}, Lcom/android/camera/gdepth/GDepth;->getTouchX()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "TouchY"

    invoke-virtual {p0}, Lcom/android/camera/gdepth/GDepth;->getTouchY()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-object v0
.end method

.method public static image2Bytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "imgSrc"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 174
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 175
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    sget-object v3, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Lcom/android/camera/exif/ExifInterface;)J
    .locals 16
    .param p1, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 42
    if-nez p1, :cond_1

    .line 43
    const-wide/16 v8, -0x1

    .line 71
    :cond_0
    :goto_0
    return-wide v8

    .line 46
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v7, :cond_2

    .line 47
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v7, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v8

    goto :goto_0

    .line 49
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/camera/gdepth/WriteDepthFile;->isMixData:Z

    if-eqz v7, :cond_3

    .line 50
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/gdepth/WriteDepthFile;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/gdepth/WriteDepthFile;->mHeight:I

    move-object/from16 v0, p1

    invoke-static {v0, v7, v12}, Lcom/android/camera/gdepth/WriteDepthFile;->addGdepth(Lcom/android/camera/mpo/Bokeh_Info;II)[B

    move-result-object v4

    .line 51
    .local v4, "data":[B
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v8

    goto :goto_0

    .line 53
    .end local v4    # "data":[B
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 54
    .local v10, "startTime":J
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v12}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v8

    .line 55
    .local v8, "fileLength":J
    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-lez v7, :cond_4

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/gdepth/WriteDepthFile;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/gdepth/WriteDepthFile;->mHeight:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v7, v12}, Lcom/android/camera/gdepth/WriteDepthFile;->addGdepth(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    sget-object v7, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cost time ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v6, "file":Ljava/io/File;
    sget-object v7, Lcom/android/camera/gdepth/WriteDepthFile;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total cost time ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto/16 :goto_0

    .line 68
    .end local v2    # "currentTime":J
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "fileLength":J
    .end local v10    # "startTime":J
    :catch_0
    move-exception v5

    .line 69
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    const-wide/16 v8, -0x1

    goto/16 :goto_0
.end method
