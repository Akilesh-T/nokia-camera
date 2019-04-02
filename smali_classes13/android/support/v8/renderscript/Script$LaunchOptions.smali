.class public final Landroid/support/v8/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    .line 589
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    .line 590
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    .line 591
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    .line 592
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    .line 593
    iput v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/v8/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/v8/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v8/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/v8/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/v8/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/v8/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 587
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    .prologue
    .line 606
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 607
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    .line 610
    iput p2, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    .line 611
    return-object p0
.end method

.method public setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    .prologue
    .line 624
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 625
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    .line 628
    iput p2, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    .line 629
    return-object p0
.end method

.method public setZ(II)Landroid/support/v8/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    .prologue
    .line 642
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 643
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    iput p1, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    .line 646
    iput p2, p0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    .line 647
    return-object p0
.end method
