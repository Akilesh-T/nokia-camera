.class public final enum Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
.super Ljava/lang/Enum;
.source "ManualDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualDataUtil$ManualModeItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

.field public static final enum ICON:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

.field public static final enum TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

.field public static final enum TEXT_NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 487
    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    const-string v1, "TEXT_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    const-string v1, "TEXT_LARGE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->ICON:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->ICON:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->$VALUES:[Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

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
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    const-class v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->$VALUES:[Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    invoke-virtual {v0}, [Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    return-object v0
.end method
