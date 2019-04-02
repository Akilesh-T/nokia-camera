.class public final enum Lcom/android/camera/one/OneCamera$AutoFocusState;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoFocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$AutoFocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field public static final enum PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 73
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "ACTIVE_SCAN"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 75
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "ACTIVE_FOCUSED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 77
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "ACTIVE_UNFOCUSED"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 79
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "PASSIVE_SCAN"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 81
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "PASSIVE_FOCUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 83
    new-instance v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    const-string v1, "PASSIVE_UNFOCUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCamera$AutoFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$AutoFocusState;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->$VALUES:[Lcom/android/camera/one/OneCamera$AutoFocusState;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->$VALUES:[Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$AutoFocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object v0
.end method
