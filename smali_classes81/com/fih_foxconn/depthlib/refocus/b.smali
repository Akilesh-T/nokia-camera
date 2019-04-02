.class public final Lcom/fih_foxconn/depthlib/refocus/b;
.super Ljava/lang/Object;


# instance fields
.field final a:D

.field final b:D

.field final c:D

.field final d:Lcom/fih_foxconn/depthlib/refocus/d;

.field private final e:Ljava/lang/String;

.field private final f:D

.field private final g:D

.field private final h:D

.field private final i:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fih_foxconn/depthlib/refocus/d;)V
    .locals 4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/b;->e:Ljava/lang/String;

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/b;->f:D

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/b;->g:D

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/b;->a:D

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/b;->b:D

    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/b;->c:D

    iput-wide v2, p0, Lcom/fih_foxconn/depthlib/refocus/b;->h:D

    iput-wide v2, p0, Lcom/fih_foxconn/depthlib/refocus/b;->i:D

    iput-object p2, p0, Lcom/fih_foxconn/depthlib/refocus/b;->d:Lcom/fih_foxconn/depthlib/refocus/d;

    return-void
.end method
