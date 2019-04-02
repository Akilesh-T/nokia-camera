.class public final enum Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;
.super Ljava/lang/Enum;
.source "ManualDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualDataUtil$ManualModeItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

.field public static final enum CIRCLE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

.field public static final enum INDICATOR:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

.field public static final enum INDICATOR_PRESSED:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

.field public static final enum MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

.field public static final enum NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    const-string v1, "MANI"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->CIRCLE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    const-string v1, "INDICATOR"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->INDICATOR:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    new-instance v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    const-string v1, "INDICATOR_PRESSED"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->INDICATOR_PRESSED:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->CIRCLE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->INDICATOR:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->INDICATOR_PRESSED:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->$VALUES:[Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

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
    .line 488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 488
    const-class v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->$VALUES:[Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0}, [Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    return-object v0
.end method
