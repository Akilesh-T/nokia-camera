.class public Lcom/android/camera/one/v2/common/qualcomm/QCSharpnessSettingValue;
.super Ljava/lang/Object;
.source "QCSharpnessSettingValue.java"

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
.field private final mSharpnessSetting:Lcom/google/common/base/Supplier;
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
    .line 9
    .local p1, "saturationSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/camera/one/v2/common/qualcomm/QCSharpnessSettingValue;->mSharpnessSetting:Lcom/google/common/base/Supplier;

    .line 11
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/one/v2/common/qualcomm/QCSharpnessSettingValue;->mSharpnessSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/qualcomm/QCSharpnessSettingValue;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
