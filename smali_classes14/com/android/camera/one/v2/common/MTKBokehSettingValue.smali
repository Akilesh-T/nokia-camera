.class public Lcom/android/camera/one/v2/common/MTKBokehSettingValue;
.super Ljava/lang/Object;
.source "MTKBokehSettingValue.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<[I>;"
    }
.end annotation


# instance fields
.field private final mBokehLevelSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<[I>;"
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
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "bokehLevelSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/common/MTKBokehSettingValue;->mBokehLevelSetting:Lcom/google/common/base/Supplier;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/MTKBokehSettingValue;->get()[I

    move-result-object v0

    return-object v0
.end method

.method public get()[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/common/MTKBokehSettingValue;->mBokehLevelSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
