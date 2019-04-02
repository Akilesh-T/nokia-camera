.class public final enum Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;
.super Ljava/lang/Enum;
.source "CameraConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Facing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

.field public static final enum BACK:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

.field public static final enum FRONT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->FRONT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .line 22
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v3}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->BACK:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    sget-object v1, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->FRONT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->BACK:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    aput-object v1, v0, v3

    sput-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->$VALUES:[Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    return-object v0
.end method

.method public static values()[Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->$VALUES:[Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    invoke-virtual {v0}, [Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    return-object v0
.end method
