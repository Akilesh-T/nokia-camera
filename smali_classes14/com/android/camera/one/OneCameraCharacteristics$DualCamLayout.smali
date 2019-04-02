.class public final enum Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
.super Ljava/lang/Enum;
.source "OneCameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCameraCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualCamLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

.field public static final enum HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

.field public static final enum HORIZONTAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

.field public static final enum VERTICAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

.field public static final enum VERTICAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;


# instance fields
.field private final mLayoutOrentation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    const-string v1, "HORIZONTAL_MAIN_SLAVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    const-string v1, "HORIZONTAL_SLAVE_MAIN"

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    const-string v1, "VERTICAL_MAIN_SLAVE"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->VERTICAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    const-string v1, "VERTICAL_SLAVE_MAIN"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->VERTICAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->VERTICAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->VERTICAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->$VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "layoutOrentation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->mLayoutOrentation:I

    .line 57
    return-void
.end method

.method public static fromLayoutOrentation(I)Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1
    .param p0, "layoutOrentation"    # I

    .prologue
    .line 64
    sparse-switch p0, :sswitch_data_0

    .line 74
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    :goto_0
    return-object v0

    .line 66
    :sswitch_0
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    goto :goto_0

    .line 68
    :sswitch_1
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    goto :goto_0

    .line 70
    :sswitch_2
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->VERTICAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    goto :goto_0

    .line 72
    :sswitch_3
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->VERTICAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->$VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    return-object v0
.end method


# virtual methods
.method public getLayoutOrentation()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->mLayoutOrentation:I

    return v0
.end method
