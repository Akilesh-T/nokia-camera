.class public final enum Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;
.super Ljava/lang/Enum;
.source "ProTutorialDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ProTutorialDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProModeTutorialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

.field public static final enum EXIT:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

.field public static final enum IDLE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

.field public static final enum SWIPE_DOWN:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

.field public static final enum SWIPE_UP_ONCE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

.field public static final enum SWIPE_UP_TWICE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->IDLE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 36
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    const-string v1, "SWIPE_UP_ONCE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_ONCE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 37
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    const-string v1, "SWIPE_UP_TWICE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_TWICE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 38
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    const-string v1, "SWIPE_DOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_DOWN:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 39
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    const-string v1, "EXIT"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->EXIT:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->IDLE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_ONCE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_TWICE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_DOWN:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->EXIT:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->$VALUES:[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->$VALUES:[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    invoke-virtual {v0}, [Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    return-object v0
.end method
