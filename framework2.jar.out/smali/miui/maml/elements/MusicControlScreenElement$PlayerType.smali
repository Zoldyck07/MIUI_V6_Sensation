.class final enum Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
.super Ljava/lang/Enum;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/elements/MusicControlScreenElement$PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

.field public static final enum MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

.field public static final enum NONE:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

.field public static final enum THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    new-instance v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->NONE:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 547
    new-instance v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    const-string v1, "MIUI"

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 548
    new-instance v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    const-string v1, "THIRDPART"

    invoke-direct {v0, v1, v4}, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 545
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v1, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->NONE:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->$VALUES:[Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

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
    .line 545
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 545
    const-class v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->$VALUES:[Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    invoke-virtual {v0}, [Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    return-object v0
.end method
