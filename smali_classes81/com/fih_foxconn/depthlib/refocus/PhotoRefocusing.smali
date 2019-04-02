.class public Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoRefocusing"

.field static a:Ljava/lang/String;

.field private static c:F

.field private static d:F


# instance fields
.field private A:Lcom/fih_foxconn/depthlib/refocus/c;

.field private B:Landroid/support/v8/renderscript/RenderScript;

.field private C:Lcom/fih_foxconn/depthlib/refocus/i;

.field private D:F

.field private E:F

.field private b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

.field public blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

.field private e:Landroid/content/Context;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:[I

.field private q:[I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:[I

.field private x:[I

.field private y:[I

.field private z:Lcom/fih_foxconn/depthlib/refocus/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta\" x:xmptk=\"XMP Core 5.1.2\"><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:Description rdf:about=\"\" xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\"><GCamera:MicroVideo>1</GCamera:MicroVideo><GCamera:MicroVideoVersion>1</GCamera:MicroVideoVersion><GCamera:MicroVideoOffset>-1</GCamera:MicroVideoOffset><GCamera:MicroVideoPresentationTimestampUs>-1</GCamera:MicroVideoPresentationTimestampUs></rdf:Description></rdf:RDF></x:xmpmeta>"

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a:Ljava/lang/String;

    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->j:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->o:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    return-void
.end method

.method private a()I
    .locals 7

    const/16 v6, 0x100

    const/4 v2, 0x0

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    add-int/lit8 v5, v0, -0x1

    new-array v1, v6, [I

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a([IIIII)Z

    move v0, v2

    move v3, v2

    :goto_0
    if-ge v2, v6, :cond_0

    aget v4, v1, v2

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    aget v4, v1, v2

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-int v0, v3, v0

    return v0
.end method

.method private a(III)I
    .locals 10

    const/16 v8, 0xff

    const/16 v9, 0x100

    const/4 v6, 0x0

    add-int/lit8 v0, p1, -0x32

    if-ltz v0, :cond_1

    add-int/lit8 v2, p1, -0x32

    :goto_0
    add-int/lit8 v0, p2, -0x32

    if-ltz v0, :cond_2

    add-int/lit8 v3, p2, -0x32

    :goto_1
    add-int/lit8 v0, p1, 0x32

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    if-ge v0, v1, :cond_3

    add-int/lit8 v4, p1, 0x32

    :goto_2
    add-int/lit8 v0, p2, 0x32

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v5, p2, 0x32

    :goto_3
    new-array v1, v9, [I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a([IIIII)Z

    move v2, v6

    move v0, v6

    move v3, v6

    :goto_4
    if-ge v2, p3, :cond_5

    aget v4, v1, v2

    if-le v4, v3, :cond_0

    aget v0, v1, v2

    move v3, v0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    add-int/lit8 v4, v0, -0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    add-int/lit8 v5, v0, -0x1

    goto :goto_3

    :cond_5
    const/16 v2, 0xa

    if-ge v3, v2, :cond_7

    move v2, p3

    :goto_5
    if-ge v2, v9, :cond_7

    aget v4, v1, v2

    if-le v4, v3, :cond_6

    aget v0, v1, v2

    move v3, v0

    move v0, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move v7, v0

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    add-int/lit8 v5, v0, -0x1

    new-array v1, v9, [I

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a([IIIII)Z

    add-int/lit8 v0, v7, -0xa

    if-ltz v0, :cond_9

    add-int/lit8 v3, v7, -0xa

    :goto_6
    add-int/lit8 v0, v7, 0xa

    if-gt v0, v8, :cond_a

    add-int/lit8 v0, v7, 0xa

    :goto_7
    move v2, v6

    move v4, v6

    :goto_8
    if-gt v3, v0, :cond_b

    aget v5, v1, v3

    if-le v5, v4, :cond_8

    aget v2, v1, v3

    move v4, v2

    move v2, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    move v3, v6

    goto :goto_6

    :cond_a
    move v0, v8

    goto :goto_7

    :cond_b
    return v2
.end method

.method static synthetic a(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)I
    .locals 1

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    return v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 11

    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-array v5, v7, [Landroid/media/FaceDetector$Face;

    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v3, v6, v7}, Landroid/media/FaceDetector;-><init>(III)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v6

    if-nez v6, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    move v3, v1

    move v0, v4

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v5, v3

    invoke-virtual {v8}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const v9, 0x3ca3d70a    # 0.02f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    aget-object v8, v5, v3

    invoke-virtual {v8}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    aget-object v8, v5, v3

    invoke-virtual {v8}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v8

    const v9, 0x3ecccccd    # 0.4f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    aget-object v0, v5, v3

    invoke-virtual {v0}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v0

    aget-object v8, v5, v3

    invoke-virtual {v8, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    const-string v8, "Face detected : %s"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->D:F

    iget v0, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->E:F

    move v0, v2

    goto :goto_0
.end method

.method private a([IIIII)Z
    .locals 3

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    :pswitch_0
    if-gt p3, p5, :cond_0

    move v0, p2

    :goto_0
    if-gt v0, p4, :cond_1

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    :pswitch_1
    if-gt p3, p5, :cond_0

    move v0, p2

    :goto_1
    if-gt v0, p4, :cond_2

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, v1, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    return-object v0
.end method

.method static synthetic c(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)I
    .locals 1

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    return v0
.end method

.method static synthetic d(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)F
    .locals 1

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->v:F

    return v0
.end method

.method static synthetic e(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->q:[I

    return-object v0
.end method

.method static synthetic f(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->x:[I

    return-object v0
.end method

.method static synthetic h(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->w:[I

    return-object v0
.end method

.method static synthetic i(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->y:[I

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    invoke-virtual {v0}, Lcom/fih_foxconn/depthlib/refocus/i;->a()V

    :cond_4
    return-void
.end method

.method public generateLivePhotos(Ljava/lang/String;Lcom/fih_foxconn/depthlib/improc/Depthmap;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v9, "video/avc"

    new-instance v6, Landroid/media/MediaCodecList;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v6}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v10

    array-length v11, v10

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v6, v10, v8

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_1

    aget-object v14, v12, v7

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    :goto_2
    if-nez v6, :cond_3

    const-string v6, "PhotoRefocusing"

    const-string v7, "No suitable encoder found!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_3
    return v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const-string v7, "video/avc"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    invoke-static {v7, v8, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "color-format"

    const v9, 0x7f000789

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "bitrate"

    const v9, 0x989680

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "frame-rate"

    const/16 v9, 0x1e

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "i-frame-interval"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v11, v7, v6, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v11}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v12

    invoke-virtual {v11}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    :try_start_1
    new-instance v13, Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    div-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    div-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(III)I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_6

    const/high16 v6, 0x437f0000    # 255.0f

    :goto_4
    sub-float/2addr v7, v6

    const/high16 v8, 0x43160000    # 150.0f

    div-float v14, v7, v8

    sget v8, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->c:F

    sget v7, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->d:F

    sub-float/2addr v7, v8

    const/high16 v10, 0x43160000    # 150.0f

    div-float v15, v7, v10

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v16, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    move v10, v8

    move/from16 v23, v7

    move v7, v9

    move/from16 v9, v23

    :goto_5
    const/16 v8, 0x96

    if-gt v9, v8, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v17, -0x1000000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    float-to-int v0, v6

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusPreview(I)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v10

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v10

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v20, v20, v18

    div-int/lit8 v20, v20, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v21, v21, v19

    div-int/lit8 v21, v21, 0x2

    add-int v18, v18, v20

    add-int v19, v19, v21

    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v12, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    add-float/2addr v6, v14

    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_7

    const/4 v6, 0x0

    move v8, v6

    :goto_6
    add-float v6, v10, v15

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_4
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_5
    :goto_7
    const-wide/16 v18, 0x2710

    move-wide/from16 v0, v18

    invoke-virtual {v11, v10, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    invoke-virtual {v13}, Landroid/media/MediaMuxer;->start()V

    goto :goto_7

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "MediaMuxer creation failed"

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "MediaMuxer creation failed"

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_7
    move v8, v6

    goto :goto_6

    :cond_8
    if-gez v17, :cond_9

    const-string v18, "PhotoRefocusing"

    const-string v19, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-nez v18, :cond_a

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "encoderOutputBuffer "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_b

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_b
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const v19, 0x8235

    mul-int v19, v19, v9

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, v18

    invoke-virtual {v13, v7, v0, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_c
    const/4 v10, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    add-int/lit8 v9, v9, 0x1

    move v10, v6

    move v6, v8

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v11}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    invoke-virtual {v11}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v11}, Landroid/media/MediaCodec;->release()V

    invoke-virtual {v13}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual {v13}, Landroid/media/MediaMuxer;->release()V

    const/4 v6, 0x1

    goto/16 :goto_3
.end method

.method public generateLivePhotosMicroVideo(Ljava/lang/String;Lcom/fih_foxconn/depthlib/improc/Depthmap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_video.mov"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->generateLivePhotos(Ljava/lang/String;Lcom/fih_foxconn/depthlib/improc/Depthmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lcom/fih_foxconn/a/b$a;

    invoke-direct {v0}, Lcom/fih_foxconn/a/b$a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/fih_foxconn/a/b$a;->a(Ljava/io/File;)Lcom/adobe/xmp/XMPMeta;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/fih_foxconn/a/a;->a(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v7, v9}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {v8, v9}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    return v3

    :catch_0
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :goto_2
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_3
    if-eqz v2, :cond_2

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_4
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catch_4
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_5
    if-eqz v2, :cond_3

    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_6
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catch_5
    move-exception v0

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v1, :cond_4

    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :goto_8
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :catchall_4
    move-exception v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v0

    :catch_6
    move-exception v3

    :try_start_14
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :cond_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_4

    :catch_7
    move-exception v3

    :try_start_15
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_7

    :cond_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_6

    :catch_8
    move-exception v2

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_8
    move-exception v0

    goto :goto_1
.end method

.method public getDepth(FF)I
    .locals 4

    const/4 v0, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v3

    if-gez v1, :cond_0

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRefocusPreview(FF)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    cmpg-float v1, p1, v3

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v4

    if-gez v1, :cond_0

    cmpg-float v1, p2, v3

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v4

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v3}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    int-to-float v1, v1

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    float-to-int v0, v0

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    mul-int/2addr v0, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    aget v0, v3, v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->q:[I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v7, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :try_start_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;

    invoke-direct {v2, p0, v0}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;-><init>(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;Ljava/util/ArrayList;)V

    invoke-interface {v8, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :cond_2
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide v0, 0x7fffffffffffffffL

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->q:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v7, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    invoke-virtual {v0, p2, p1}, Lcom/fih_foxconn/depthlib/refocus/c;->a(FF)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v1, v1, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v2, v2, Lcom/fih_foxconn/depthlib/refocus/c;->d:F

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v3, v3, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    invoke-static {v0, v1, v2, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(Lcom/fih_foxconn/depthlib/refocus/d;FFF)Lcom/fih_foxconn/depthlib/refocus/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;->b(Lcom/fih_foxconn/depthlib/refocus/a;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Lcom/fih_foxconn/depthlib/refocus/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRefocusPreview(I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iput p1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$2;

    invoke-direct {v3, p0, v0}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$2;-><init>(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;Ljava/util/ArrayList;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide v2, 0x7fffffffffffffffL

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->q:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v7, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v2, v2, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    invoke-interface {v2, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v1

    iput v1, v0, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v1, v1, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v2, v2, Lcom/fih_foxconn/depthlib/refocus/c;->d:F

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v3, v3, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    invoke-static {v0, v1, v2, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(Lcom/fih_foxconn/depthlib/refocus/d;FFF)Lcom/fih_foxconn/depthlib/refocus/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;->b(Lcom/fih_foxconn/depthlib/refocus/a;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Lcom/fih_foxconn/depthlib/refocus/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRefocusPreviewAuto()Landroid/graphics/Bitmap;
    .locals 17

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Face detected : %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->D:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->E:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->E:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->D:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusPreview(FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v2, v4, v8

    new-array v2, v2, [I

    mul-int v3, v4, v8

    new-array v10, v3, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, 0x0

    :goto_1
    mul-int v5, v4, v8

    if-ge v3, v5, :cond_1

    aget v5, v2, v3

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getHistogram(Landroid/content/Context;Landroid/graphics/Bitmap;)[I

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v1}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getTwoMeansCenters(Landroid/graphics/Bitmap;)[F

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v4, v5}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getRefinedTwoMeansThreshold([I[F)I

    move-result v6

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_3

    aget v7, v4, v3

    if-le v7, v1, :cond_2

    aget v1, v4, v3

    move v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "1st center: %s, 2nd center: %s, threshold: %s, 1st peak %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, 0x0

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusPreview(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, v1, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Face detected : %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->D:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->E:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->E:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->D:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusPreview(FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v2, v4, v8

    new-array v2, v2, [I

    mul-int v3, v4, v8

    new-array v10, v3, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, 0x0

    :goto_3
    mul-int v5, v4, v8

    if-ge v3, v5, :cond_5

    aget v5, v2, v3

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getHistogram(Landroid/content/Context;Landroid/graphics/Bitmap;)[I

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v1}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getTwoMeansCenters(Landroid/graphics/Bitmap;)[F

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v4, v5}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getRefinedTwoMeansThreshold([I[F)I

    move-result v6

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_7

    aget v7, v4, v3

    if-le v7, v1, :cond_6

    aget v1, v4, v3

    move v2, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const-string v1, "1st center: %s, 2nd center: %s, threshold: %s, 1st peak %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, 0x0

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusPreview(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRefocusRealSize(FF)Landroid/graphics/Bitmap;
    .locals 17

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    sget-object v3, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v4}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    float-to-int v3, v3

    float-to-int v2, v2

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v10

    new-instance v6, Lcom/fih_foxconn/depthlib/a;

    invoke-direct {v6, v10}, Lcom/fih_foxconn/depthlib/a;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    invoke-static {v10}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v11

    invoke-static {v10}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/ScriptIntrinsicResize;

    move-result-object v12

    invoke-static {v10}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v10, v2, v8, v9}, Landroid/support/v8/renderscript/Type;->createXY(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    div-int/lit8 v5, v8, 0x6

    div-int/lit8 v7, v9, 0x6

    const/4 v15, 0x1

    invoke-static {v2, v5, v7, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v11, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v11, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v11, v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v12, v7}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v12, v13}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v6, v14}, Lcom/fih_foxconn/depthlib/a;->a(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v6, v13}, Lcom/fih_foxconn/depthlib/a;->b(Landroid/support/v8/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->v:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Lcom/fih_foxconn/depthlib/a;->c(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    invoke-virtual {v6, v2}, Lcom/fih_foxconn/depthlib/a;->a(I)V

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    const/16 v2, 0x8

    if-ge v7, v2, :cond_7

    mul-int/lit8 v2, v7, 0x2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    div-int v15, v8, v2

    div-int v2, v9, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v15, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v15

    invoke-static {v10, v15}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v7, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v11, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v11, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v11, v15}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v12, v15}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_3

    move-object v2, v3

    :goto_3
    invoke-virtual {v12, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v15}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    if-nez v7, :cond_4

    move-object v2, v3

    move-object v5, v6

    :goto_4
    invoke-virtual {v5, v2}, Lcom/fih_foxconn/depthlib/a;->c(Landroid/support/v8/renderscript/Allocation;)V

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x41100000    # 9.0f

    goto :goto_2

    :cond_3
    move-object v2, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v6, v2}, Lcom/fih_foxconn/depthlib/a;->b(I)V

    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_5

    move-object v2, v3

    :goto_5
    invoke-virtual {v6, v2}, Lcom/fih_foxconn/depthlib/a;->d(Landroid/support/v8/renderscript/Allocation;)V

    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_6

    move-object v2, v3

    move-object v5, v6

    goto :goto_4

    :cond_5
    move-object v2, v4

    goto :goto_5

    :cond_6
    move-object v2, v4

    move-object v5, v6

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v6}, Lcom/fih_foxconn/depthlib/a;->destroy()V

    invoke-virtual {v11}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->destroy()V

    invoke-virtual {v12}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->destroy()V

    invoke-virtual {v10}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->l:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->k:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit8 v2, v2, -0x2

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->l:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->k:I

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-static {v4, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static {v5, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/fih_foxconn/depthlib/refocus/f;

    invoke-direct {v3, v4, v2}, Lcom/fih_foxconn/depthlib/refocus/f;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Lcom/fih_foxconn/depthlib/refocus/c;

    invoke-direct {v2, v3}, Lcom/fih_foxconn/depthlib/refocus/c;-><init>(Lcom/fih_foxconn/depthlib/refocus/f;)V

    const/high16 v4, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->v:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/fih_foxconn/depthlib/refocus/c;->a(F)V

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/fih_foxconn/depthlib/refocus/c;->a(FF)V

    new-instance v4, Lcom/fih_foxconn/depthlib/refocus/i;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->B:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v4, v5}, Lcom/fih_foxconn/depthlib/refocus/i;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iget-object v5, v2, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v5, v5, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    iget v6, v2, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    iget v7, v2, Lcom/fih_foxconn/depthlib/refocus/c;->d:F

    iget v2, v2, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    invoke-static {v5, v6, v7, v2}, Lcom/fih_foxconn/depthlib/refocus/a;->a(Lcom/fih_foxconn/depthlib/refocus/d;FFF)Lcom/fih_foxconn/depthlib/refocus/a;

    move-result-object v2

    iget-object v3, v3, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3, v2}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Landroid/graphics/Bitmap;Lcom/fih_foxconn/depthlib/refocus/a;)V

    invoke-virtual {v4, v2}, Lcom/fih_foxconn/depthlib/refocus/i;->b(Lcom/fih_foxconn/depthlib/refocus/a;)V

    invoke-virtual {v4, v2}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Lcom/fih_foxconn/depthlib/refocus/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->k:I

    goto/16 :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->k:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    and-int/lit8 v3, v3, -0x2

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRefocusRealSizeCPU(FF)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->m:Ljava/util/ArrayList;

    float-to-int v0, p1

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v8, v0

    float-to-int v0, p2

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->w:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->x:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->y:[I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->x:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->x:[I

    float-to-int v1, v8

    mul-int/2addr v1, v3

    float-to-int v2, v9

    add-int/2addr v1, v2

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    const/16 v0, 0xd

    new-array v9, v0, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0xd

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    add-int/lit8 v5, v1, 0x1

    div-int v5, v3, v5

    add-int/lit8 v6, v1, 0x1

    div-int v6, v7, v6

    const/4 v8, 0x1

    invoke-static {v0, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v9, v1

    aget-object v0, v9, v1

    invoke-static {v2, v0}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v6

    if-nez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v4, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    aget-object v0, v9, v1

    invoke-virtual {v6, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x41100000    # 9.0f

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    move v8, v0

    :goto_3
    const/16 v0, 0xd

    if-ge v8, v0, :cond_5

    aget-object v0, v9, v8

    const/4 v1, 0x1

    invoke-static {v0, v3, v7, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v9, v8

    aget-object v0, v9, v8

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->y:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    aget-object v0, v9, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v4, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;

    invoke-direct {v4, p0, v0, v7, v8}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;-><init>(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;Ljava/util/ArrayList;II)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide v4, 0x7fffffffffffffffL

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->w:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->w:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->y:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->x:[I

    goto/16 :goto_0
.end method

.method public init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;)Z
    .locals 12

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "PhotoRefocusing"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "image = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", depth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    const-string v0, "PhotoRefocusing"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "image width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", image height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->l:Z

    iget-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->l:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->j:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit8 v0, v0, -0x2

    :goto_2
    iget-boolean v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->l:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->j:I

    :goto_3
    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->u:I

    iput-object p3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$4;->a:[I

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->j:I

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->j:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    goto :goto_3

    :pswitch_0
    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->u:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->q:[I

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->u:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->p:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v7, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0xd

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->m:Ljava/util/ArrayList;

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->u:I

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    div-int/lit8 v3, v1, 0x8

    mul-int v1, v3, v0

    :goto_7
    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v3

    if-ge v1, v4, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/16 v0, 0x8

    if-ge v1, v0, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v3, v0, 0x8

    mul-int v0, v3, v1

    :goto_9
    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v3

    if-ge v0, v4, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v10

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v11

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    move v8, v1

    :goto_a
    const/16 v1, 0xd

    if-ge v8, v1, :cond_c

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v11, v9}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v11, v10}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v10, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->t:I

    iget v7, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->s:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_a

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->v:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->r:I

    goto/16 :goto_4

    :pswitch_1
    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/f;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/c;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/c;-><init>(Lcom/fih_foxconn/depthlib/refocus/f;)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    const/high16 v1, 0x3e000000    # 0.125f

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/c;->a(F)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/c;->a(FF)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->B:Landroid/support/v8/renderscript/RenderScript;

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->B:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v1, v1, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v2, v2, Lcom/fih_foxconn/depthlib/refocus/c;->d:F

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    iget v3, v3, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    invoke-static {v0, v1, v2, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(Lcom/fih_foxconn/depthlib/refocus/d;FFF)Lcom/fih_foxconn/depthlib/refocus/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->C:Lcom/fih_foxconn/depthlib/refocus/i;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->z:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, v1, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->blurStack:Lcom/fih_foxconn/depthlib/refocus/a;

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Landroid/graphics/Bitmap;Lcom/fih_foxconn/depthlib/refocus/a;)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStrength(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->v:F

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->REFOCUS_REALISTIC:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->A:Lcom/fih_foxconn/depthlib/refocus/c;

    const/high16 v1, 0x3e000000    # 0.125f

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->v:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/c;->a(F)V

    :cond_0
    return-void
.end method
