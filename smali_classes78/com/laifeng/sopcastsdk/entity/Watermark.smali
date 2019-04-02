.class public Lcom/laifeng/sopcastsdk/entity/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field public hMargin:I

.field public height:I

.field public markImg:Landroid/graphics/Bitmap;

.field public orientation:I

.field public vMargin:I

.field public width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIII)V
    .locals 0
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I
    .param p5, "vmargin"    # I
    .param p6, "hmargin"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/entity/Watermark;->markImg:Landroid/graphics/Bitmap;

    .line 24
    iput p2, p0, Lcom/laifeng/sopcastsdk/entity/Watermark;->width:I

    .line 25
    iput p3, p0, Lcom/laifeng/sopcastsdk/entity/Watermark;->height:I

    .line 26
    iput p4, p0, Lcom/laifeng/sopcastsdk/entity/Watermark;->orientation:I

    .line 27
    iput p5, p0, Lcom/laifeng/sopcastsdk/entity/Watermark;->vMargin:I

    .line 28
    iput p6, p0, Lcom/laifeng/sopcastsdk/entity/Watermark;->hMargin:I

    .line 29
    return-void
.end method
