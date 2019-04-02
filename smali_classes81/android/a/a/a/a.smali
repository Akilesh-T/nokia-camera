.class public final Landroid/a/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/a/a/a/a$a;
    }
.end annotation


# static fields
.field private static final i:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public c:D

.field public d:Landroid/graphics/Bitmap;

.field public e:[B

.field public f:Landroid/graphics/Bitmap;

.field g:Lcom/adobe/xmp/XMPMeta;

.field h:Lcom/adobe/xmp/XMPMeta;

.field private j:Lcom/fih_foxconn/depthlib/refocus/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x44

    sput v0, Landroid/a/a/a/a;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "RangeInverse"

    iput-object v1, p0, Landroid/a/a/a/a;->a:Ljava/lang/String;

    iput-object v0, p0, Landroid/a/a/a/a;->j:Lcom/fih_foxconn/depthlib/refocus/d;

    iput-wide v2, p0, Landroid/a/a/a/a;->b:D

    iput-wide v2, p0, Landroid/a/a/a/a;->c:D

    iput-object v0, p0, Landroid/a/a/a/a;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/a/a/a/a;->e:[B

    iput-object v0, p0, Landroid/a/a/a/a;->f:Landroid/graphics/Bitmap;

    invoke-static {p1, p0}, Landroid/a/a/a/a;->a(Ljava/io/InputStream;Landroid/a/a/a/a;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    :try_start_0
    iget-object v1, p0, Landroid/a/a/a/a;->h:Lcom/adobe/xmp/XMPMeta;

    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "GDepth:Data"

    invoke-interface {v1, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroid/a/a/a/a;->e:[B

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/a/a/a/a;->d:Landroid/graphics/Bitmap;

    :cond_0
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "GDepth:Units"

    invoke-interface {v2, v1, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v4, "mm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v1, 0x3a83126f    # 0.001f

    :cond_1
    :goto_0
    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "GDepth:Far"

    invoke-interface {v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, p0, Landroid/a/a/a/a;->b:D

    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "GDepth:Near"

    invoke-interface {v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    iput-wide v4, p0, Landroid/a/a/a/a;->c:D

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "GDepth:Format"

    invoke-interface {v2, v1, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "RangeInverse"

    iget-object v2, p0, Landroid/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/g;

    iget-wide v2, p0, Landroid/a/a/a/a;->c:D

    double-to-float v1, v2

    iget-wide v2, p0, Landroid/a/a/a/a;->b:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/g;-><init>(FF)V

    :goto_1
    iput-object v0, p0, Landroid/a/a/a/a;->j:Lcom/fih_foxconn/depthlib/refocus/d;

    iget-object v0, p0, Landroid/a/a/a/a;->h:Lcom/adobe/xmp/XMPMeta;

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage:Data"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/a/a/a/a;->f:Landroid/graphics/Bitmap;

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v4, "km"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_4
    const-string v1, "RangeLinear"

    iget-object v2, p0, Landroid/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/h;

    iget-wide v2, p0, Landroid/a/a/a/a;->c:D

    double-to-float v1, v2

    iget-wide v2, p0, Landroid/a/a/a/a;->b:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/h;-><init>(FF)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    const-string v1, "XmpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown GDepth format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Landroid/a/a/a/a;)Lcom/adobe/xmp/XMPMeta;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/a/a/a/a;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/a/a/a/a;->a(Ljava/util/List;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    iput-object v1, p1, Landroid/a/a/a/a;->g:Lcom/adobe/xmp/XMPMeta;

    if-eqz v1, :cond_0

    const-string v3, "http://ns.adobe.com/xmp/note/"

    const-string v4, "HasExtendedXMP"

    invoke-interface {v1, v3, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    const-string v3, "http://ns.adobe.com/xmp/note/"

    const-string v4, "HasExtendedXMP"

    invoke-interface {v1, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v2, v3}, Landroid/a/a/a/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    iput-object v2, p1, Landroid/a/a/a/a;->h:Lcom/adobe/xmp/XMPMeta;

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/adobe/xmp/XMPMeta;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/a/a/a/a$a;",
            ">;)",
            "Lcom/adobe/xmp/XMPMeta;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/a/a/a/a$a;

    iget-object v3, v0, Landroid/a/a/a/a$a;->c:[B

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v3, v4}, Landroid/a/a/a/a;->a([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/a/a/a/a$a;->c:[B

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_2

    aget-byte v4, v3, v1

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v1, v1, -0x1d

    new-array v1, v1, [B

    iget-object v0, v0, Landroid/a/a/a/a$a;->c:[B

    const/16 v3, 0x1d

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    array-length v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "XMP parse error "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/a/a/a/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/adobe/xmp/XMPMeta;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/a/a/a/a$a;

    iget-object v9, v0, Landroid/a/a/a/a$a;->c:[B

    invoke-static {v9, v3}, Landroid/a/a/a/a;->a([BLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x7

    iget-object v10, v0, Landroid/a/a/a/a$a;->c:[B

    array-length v10, v10

    iget-object v11, v0, Landroid/a/a/a/a$a;->c:[B

    array-length v11, v11

    sub-int/2addr v11, v9

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v1, v11

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_2
    new-array v8, v1, [B

    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/a/a/a/a$a;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v9

    iget-object v1, v1, Landroid/a/a/a/a$a;->c:[B

    invoke-static {v1, v9, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-static {v8}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Extended XMP parse error "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/a/a/a/a$a;",
            ">;"
        }
    .end annotation

    const/16 v6, 0xff

    const/4 v5, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_4

    :cond_2
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const/16 v3, 0xe1

    if-ne v1, v3, :cond_9

    :try_start_2
    new-instance v3, Landroid/a/a/a/a$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/a/a/a/a$a;-><init>(B)V

    iput v1, v3, Landroid/a/a/a/a$a;->a:I

    iput v2, v3, Landroid/a/a/a/a$a;->b:I

    add-int/lit8 v1, v2, -0x2

    new-array v1, v1, [B

    iput-object v1, v3, Landroid/a/a/a/a$a;->c:[B

    iget-object v1, v3, Landroid/a/a/a/a$a;->c:[B

    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eq v1, v5, :cond_a

    if-eq v1, v6, :cond_5

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_6

    if-eqz p0, :cond_0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_6
    const/16 v2, 0xda

    if-ne v1, v2, :cond_7

    if-eqz p0, :cond_0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-eq v2, v5, :cond_8

    if-ne v3, v5, :cond_3

    :cond_8
    if-eqz p0, :cond_0

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :cond_9
    add-int/lit8 v1, v2, -0x2

    int-to-long v2, v1

    :try_start_9
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_5
    move-exception v1

    :try_start_a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Could not parse file."

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p0, :cond_0

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :cond_a
    if-eqz p0, :cond_0

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_b

    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_b
    :goto_2
    throw v0

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private static a([BLjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
