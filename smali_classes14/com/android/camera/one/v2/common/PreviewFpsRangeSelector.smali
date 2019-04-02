.class public Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;
.super Ljava/lang/Object;
.source "PreviewFpsRangeSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/util/Range",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mPreviewFpsRangeSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "previewFpsRangeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .local p2, "recordController":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;->mPreviewFpsRangeSetting:Lcom/google/common/base/Supplier;

    .line 33
    return-void
.end method


# virtual methods
.method public get()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;->mPreviewFpsRangeSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;->get()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method
