.class Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;
.super Ljava/lang/Object;
.source "PSImageSNPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/PSImageSNPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tf8Params"
.end annotation


# instance fields
.field size:I

.field stepExactly0:I

.field stepSize:F

.field strides:[I

.field final synthetic this$0:Lcom/fih_foxconn/imagelab/PSImageSNPE;


# direct methods
.method constructor <init>(Lcom/fih_foxconn/imagelab/PSImageSNPE;I[I)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "strides"    # [I

    .prologue
    .line 374
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->this$0:Lcom/fih_foxconn/imagelab/PSImageSNPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p2, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->size:I

    .line 376
    iput-object p3, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->strides:[I

    .line 377
    return-void
.end method
