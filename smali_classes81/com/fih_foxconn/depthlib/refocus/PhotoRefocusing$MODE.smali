.class public final enum Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

.field public static final enum REFOCUS_NAIVE:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

.field public static final enum REFOCUS_REALISTIC:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    const-string v1, "REFOCUS_NAIVE"

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->REFOCUS_NAIVE:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    const-string v1, "REFOCUS_REALISTIC"

    invoke-direct {v0, v1, v3}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->REFOCUS_REALISTIC:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->REFOCUS_NAIVE:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->REFOCUS_REALISTIC:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->$VALUES:[Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;
    .locals 1

    const-class v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;
    .locals 1

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->$VALUES:[Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    invoke-virtual {v0}, [Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$MODE;

    return-object v0
.end method
