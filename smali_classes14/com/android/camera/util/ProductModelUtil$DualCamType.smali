.class public final enum Lcom/android/camera/util/ProductModelUtil$DualCamType;
.super Ljava/lang/Enum;
.source "ProductModelUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/ProductModelUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualCamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/util/ProductModelUtil$DualCamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/util/ProductModelUtil$DualCamType;

.field public static final enum COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

.field public static final enum NONE:Lcom/android/camera/util/ProductModelUtil$DualCamType;

.field public static final enum QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ProductModelUtil$DualCamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->NONE:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    .line 43
    new-instance v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;

    const-string v1, "COLOR_MONO"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/util/ProductModelUtil$DualCamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    .line 44
    new-instance v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;

    const-string v1, "QC_LOGIC_CAM"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/util/ProductModelUtil$DualCamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/util/ProductModelUtil$DualCamType;

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->NONE:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->$VALUES:[Lcom/android/camera/util/ProductModelUtil$DualCamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromFlag(I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/util/ProductModelUtil$DualCamType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    packed-switch p0, :pswitch_data_0

    .line 55
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->NONE:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_1
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_2
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->$VALUES:[Lcom/android/camera/util/ProductModelUtil$DualCamType;

    invoke-virtual {v0}, [Lcom/android/camera/util/ProductModelUtil$DualCamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/util/ProductModelUtil$DualCamType;

    return-object v0
.end method
