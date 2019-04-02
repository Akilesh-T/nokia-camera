.class public Lcom/android/camera/one/v2/common/ControlBokehBeautySelector;
.super Ljava/lang/Object;
.source "ControlBokehBeautySelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOKEH_BEAUTY_OFF:I = 0x0

.field public static final BOKEH_BEAUTY_ON:I = 0x1


# instance fields
.field private final mBokehBeautySetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "bokehBeautySetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/camera/one/v2/common/ControlBokehBeautySelector;->mBokehBeautySetting:Lcom/google/common/base/Supplier;

    .line 12
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    iget-object v0, p0, Lcom/android/camera/one/v2/common/ControlBokehBeautySelector;->mBokehBeautySetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/ControlBokehBeautySelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
