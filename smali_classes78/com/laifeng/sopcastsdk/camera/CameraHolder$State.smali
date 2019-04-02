.class public final enum Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
.super Ljava/lang/Enum;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

.field public static final enum INIT:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

.field public static final enum OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

.field public static final enum PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->INIT:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    .line 43
    new-instance v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3}, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    .line 44
    new-instance v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v4}, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->INIT:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->$VALUES:[Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    return-object v0
.end method

.method public static values()[Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->$VALUES:[Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    invoke-virtual {v0}, [Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    return-object v0
.end method
