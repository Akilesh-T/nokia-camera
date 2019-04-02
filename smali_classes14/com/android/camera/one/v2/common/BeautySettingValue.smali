.class public Lcom/android/camera/one/v2/common/BeautySettingValue;
.super Ljava/lang/Object;
.source "BeautySettingValue.java"

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


# instance fields
.field private final mBeautyLevelSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "beautyLevelSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/one/v2/common/BeautySettingValue;->mBeautyLevelSetting:Lcom/google/common/base/Supplier;

    .line 15
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/common/BeautySettingValue;->mBeautyLevelSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/BeautySettingValue;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
