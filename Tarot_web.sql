CREATE TABLE menutable(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
)
CREATE TABLE newstable(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
)
INSERT INTO menutable ( [name], [link], [meta], [hide], [order], [datebegin]) VALUES ( N'HOME', NULL, N'gioi-thieu', 1, 2, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT INTO menutable ( [name], [link], [meta], [hide], [order], [datebegin]) VALUES ( N'ABOUT', NULL, N'san-pham/quan-ao-nam', 1, 3, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT INTO menutable ( [name], [link], [meta], [hide], [order], [datebegin]) VALUES ( N'TAROT READING', NULL, N'san-pham/quan-ao-nu', 1, 4, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT INTO menutable ( [name], [link], [meta], [hide], [order], [datebegin]) VALUES ( N'READERS', NULL, N'tin-tuc-su-kien', 1, 5, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT INTO menutable ( [name], [link], [meta], [hide], [order], [datebegin]) VALUES ( N'CONTACT US', NULL, N'dich-vu', 1, 6, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))

DROP TABLE IF EXISTS cardtable;
CREATE TABLE cardtable(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_cups(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_swords(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_pentacles(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_wands(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE readertable(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
	position nvarchar(100) NULL,
    link nvarchar(200) NULL,
	img nvarchar(200) NULL,
    address nvarchar(200) NULL,
    phone varchar(20) NULL,
    detail_1 nvarchar(max) NULL,
    detail_2 nvarchar(max) NULL,
    detail_3 nvarchar(max) NULL,
	detail_4  nvarchar(max) NULL
);

insert into cardtable values('The Fool' ,'the-fool.jpg','Rider Waite Tarot Card','New beginnings, spontaneity, a free spirit','Hesitation, recklessness, risk-taking','The Fool is a sign you are on the outset of a new journey. As you undertake this new
                opportunity, The Fool
                encourages you to throw caution to the wind and prepare to embrace the unknown. This is about taking a leap
                of faith for personal growth, development and adventure.','The Fool reversed suggests something is holding you back and you are preventing
                yourself from moving
                forward on an opportunity. You may fear the unknown, as a result you have come to an impasse. You may be
                waiting on better timing, but balance this out with knowing this is a sign to take a step forward even if
                you are
                unsure of exactly what will happen next.')

insert into cardtable values('The Magician' ,'the-magician.jpg','Rider Waite Tarot Card','Resourcefulness, power, inspired action','Untapped talents, poor planning, manipulation','You are ready to turn your ideas into reality. The skills and knowledge you have
gathered along your life
path have led you to where you are now, you are fully capable to take action. Now is the perfect time
to move forward on any ideas you have recently conceived.','The Magician Reversed shows that you have many skills, talents, and capabilities, but
your real potential
is not being maximized. You may feel as if you have so much more to give. Or perhaps you know youre great
at something but you have not allowed yourself to explore this skill.')

INSERT INTO cardtable 
VALUES (
    'The High Priestess', 
    'the-high-priestess.jpg', 
    'Rider Waite Tarot Card', 
    'Intuition, sacred knowledge, the subconscious mind', 
    'Secrets, withdrawal, silence', 
    'The High Priestess shows up in readings when your intuitive sense is providing you with useful information Knowledge of how to fix any issues will not come from thinking and rationalizing but by tapping into and trusting your intuition Allow yourself time and space to meditate and attend to your inner voice', 
    'You may be swayed by other peoples opinions when what you really need to do is focus on what is right for you It is time to withdraw yourself from the external world to observe what your inner guidance is sharing with you now'
);
INSERT INTO cardtable 
VALUES (
    'The Empress', 
    'the-empress.jpg', 
    'Rider Waite Tarot Card', 
    'Abundance, creativity, dynamism', 
    'Creative block, dependency on others', 
    'The Empress brings with her development and progress She is a maternal figure therefore she represents the creation of life or metaphorically speaking the birth of an idea She is a signal to bring your creative ideas to fruition by supporting their growth', 
    'The Empress Reversed can suggest that you are feeling a creative block especially in birthing a new idea or expressing yourself creatively You may worry whether it will be a success or if your work is appealing to others For now dont bother about what others think The important thing is that you are allowing your creative energy to flow'
);
INSERT INTO cardtable 
VALUES (
    'The Emperor', 
    'the-emperor.jpg', 
    'Rider Waite Tarot Card', 
    'Discipline, stability, rationalized thinking', 
    'Lack of discipline, inflexibility', 
    'The Emperor reflects a system bound by rules and regulations You create law and order by applying principles or guidelines to a specific situation Create calm out of chaos by breaking down any problem into its parts and then mapping out the actions you need to take to resolve it Be systematic strategic and highly organized in your approach and stick to your plan until the end', 
    'When The Emperor Reversed pops up in a Tarot reading pay attention to your commitment to your goals and your self-discipline to get the job done If you are struggling to see any real outcomes check that you have a plan in place a routine to support it and the dedication to see it through'
);
INSERT INTO cardtable 
VALUES (
    'The Hierophant', 
    'the-hierophant.jpg', 
    'Rider Waite Tarot Card', 
    'Tradition, foresight, conformity', 
    'Personal beliefs, freedom, challenging normalcy', 
    'The Hierophant‘s arrival suggests you are following convention and staying within the bounds of a tried and tested model You are not yet willing to go out on a limb or offer any new and innovative ideas Instead you adhere to the key principles and rules that you know will lead to a successful result', 
    'The Hierophant Reversed is about challenging the status quo You see alternative ways of viewing the world You no longer accept the rigid structures tradition and dogma surrounding you instead you seek out opportunities to rebel and reclaim your personal power If you feel restricted or constrained and have lost your sense of freedom and flexibility now is the time to make your own rules'
);
INSERT INTO cardtable 
VALUES (
    'The Lovers', 
    'the-lovers.jpg', 
    'Rider Waite Tarot Card', 
    'Romance, duality, choice', 
    'Hesitation, recklessness, risk-taking', 
    'The Lovers is about choice You are figuring out what you stand for and your philosophy To make good choices you need to be clear about your personal beliefs and values and stay true to who you are and be authentic and genuine in all your endeavors', 
    'You might be facing a tough choice with significant consequences Instead of making a decision based on your values you feel tempted to avoid responsibility for your actions Choose the path in alignment with your genuine self'
);

INSERT INTO cardtable  
VALUES (
    'The Chariot', 
    'the-chariot.jpg', 
    'Rider Waite Tarot Card', 
    'Determination, willpower, action', 
    'Opposition, lack of direction', 
    'The Chariot is a card of willpower determination and strength You have discovered how to make decisions in alignment with your values and now you are taking action on those decisions When The Chariot appears in a Tarot reading take it as a sign of encouragement When you apply discipline commitment and willpower to achieve your goals you will succeed', 
    'At times The Chariot Reversed is a warning that you are letting obstacles and challenges get in the way preventing you from achieving what you set out to do Its all getting too hard and you dont have the will to go on If that resonates stop for a moment and think about the things that matter most to you and why you want to achieve this goal'
);
INSERT INTO cardtable  
VALUES (
    'Strength', 
    'strength.jpg', 
    'Rider Waite Tarot Card', 
    'Perseverance, courage, influence', 
    'Self-doubt, vulnerability', 
    'The Strength card speaks to the human spirits ability to overcome any obstacle Strength is about knowing you can endure lifes obstacles If you have been going through a rough time and are burnt out or stressed the Strength card encourages you to find the power within yourself to persevere You have got what it takes to see this situation through to its eventual end', 
    'If you have recently experienced a setback you may be vulnerable and lacking in self-confidence Know that your core strength will always be with you and now is as good a time as any to reconnect with this power You can also reinvigorate your self-assurance and self-esteem by collecting evidence from your past that proves you have what it takes to succeed and overcome these temporary challenges'
);
INSERT INTO cardtable 
VALUES (
    'The Hermit', 
    'the-hermit.jpg', 
    'Rider Waite Tarot Card', 
    'Soul-searching, introspection, inner guidance', 
    'Isolation, lonliness, withdrawal', 
    'The Hermit often appears when you are at a pivotal point in your life and considering a new direction Through contemplation and self-examination you may begin to re-evaluate your personal goals and change your overall course The Hermit invites you to retreat and experience a sense of seclusion and introspection', 
    'The Hermit Reversed can go one of two ways you are not taking enough time for personal reflection or you are taking too much If you struggle to connect with your personal self The Hermit Reversed encourages you to create more space to meditate and reflect It is time to go deeper into your inner being and rediscover your greater purpose'
);
INSERT INTO cardtable  
VALUES (
    'The Wheel of Fortune', 
    'wheel-of-fortune.jpg', 
    'Rider Waite Tarot Card', 
    'Karma, destiny, a turning point', 
    'Bad luck, resistance to change, breaking cycles', 
    'The Wheel of Fortune can show a critical turning point in your life Opportunities you could never imagine are suddenly available to you and you have the chance to make a significant change in your life While it may be unexpected and unfamiliar see this as an invitation to turn things around and take an entirely new direction in your life', 
    'The Wheel of Fortune Reversed can also reflect resistance to change particularly if you feel it forced upon you This card suggests that change has become a source of significant stress and you may be trying to consciously or subconsciously stop events from running their course Accept that change is inevitable and you will have a much-improved experience when you can go with the flow'
);

INSERT INTO cardtable  
VALUES (
    'Justice', 
    'justice.jpg', 
    'Rider Waite Tarot Card', 
    'Truth, fairness', 
    'Self-critical, dishonesty', 
    'At its core Justice is about the search for truth As you explore your truth you will discover that things are not as clear-cut as you had thought Be prepared to dip into the murky waters and explore what truth means to you Be consciously aware of what you believe to be true and what you believe to be fair and ethical It may not be as clear-cut as you think so prepare to challenge yourself and to explore new territories of your belief system', 
    'When Justice is reversed it can indicate your inner critic is in full effect You may be evaluating your every move and coming down hard on yourself when you misstep If this resonates start from a place of forgiveness and self-acceptance Show yourself a bit of kindness and compassion'
);
INSERT INTO cardtable
VALUES (
    'The Hanged Man', 
    'the-hanged-man.jpg', 
    'Rider Waite Tarot Card', 
    'Pause, surrender, new perspectives', 
    'Delays, resistance, indecision', 
    'The Hanged Man may come as a positive sign that you can now move forward with a new perspective and a renewed sense of energy There may have been a break-through or stark realization about how you need to do things differently You are prepared to make those changes and move ahead with a new mindset', 
    'When The Hanged Man Reversed appears in a Tarot reading your projects and activities may be coming to an unexpected and abrupt halt Don’t keep pushing forward hoping that more force will drive you to where you want to go Instead surrender to the opportunity to pause and view it as your chance to reassess and re-evaluate where you are on your path Something new is emerging and you won’t be able to see it unless you allow the time and space for it to come through'
);
INSERT INTO cardtable 
VALUES (
    'Death', 
    'death.jpg', 
    'Rider Waite Tarot Card', 
    'Change, transition, endings', 
    'Inner purging, personal transformation, resistance to change', 
    'The Death card symbolizes the end of a major phase or aspect of your life that you realize is no longer serving you opening up the possibility of something far more valuable and essential You must close one door to open another You need to put the past behind you and part ways ready to embrace new opportunities and possibilities', 
    'Death can mean that you are on the verge of meaningful change but are resisting it You may be reluctant to let go or you may not know how to make the change you need You still carry harmful viewpoints from the past that may interfere with a new opportunity Because of your refusal life has stagnated and you feel stuck in limbo'
);
INSERT INTO cardtable 
VALUES (
    'Temperance', 
    'temperance.jpg', 
    'Rider Waite Tarot Card', 
    'Balance, moderation, purpose', 
    'Imbalance, excess, re-alignment', 
    'Temperance asks you to take the middle path and accommodate all perspectives Now is not the time to be highly opinionated or controversial Be the peacekeeper and take a balanced and moderate approach avoiding any extremes Include others and bring together diverse groups of people to create harmony and cooperation', 
    'If you have recently experienced a period of excess Temperance Reversed is your invitation to restore balance and moderation as soon as possible It can also be a sign you sense that something is off in your life creating stress and tension Life is not flowing as easily as you had hoped Focus on your long-term vision and higher purpose and seek to align your daily activities with this vision'
);
INSERT INTO cardtable 
VALUES (
    'The Devil', 
    'the-devil.jpg', 
    'Rider Waite Tarot Card', 
    'Attachment, restriction, addiction', 
    'Release, break-through', 
    'The Devil card represents your darker side and the negative forces that constrain you and hold you back from being the best version of yourself You may be at the effect of negative habits dependencies behaviors thought patterns relationships and addictions', 
    'The Devil Reversed can often appear when you are on the verge of a break-through or an up-levelling You are being called to your highest potential but first you must let go of any unhealthy attachments or limiting beliefs that may hold you back Often when you are called to something more you must deal with your shadows before you can step into this new version of yourself'
);
INSERT INTO cardtable 
VALUES (
    'The Tower', 
    'the-tower.jpg', 
    'Rider Waite Tarot Card', 
    'Sudden change, upheaval, awakening', 
    'Revelation, transformation', 
    'When The Tower card appears in a Tarot reading expect the unexpected massive change upheaval destruction and chaos Its an event that shakes you to your core affecting you spiritually mentally and physically The best way forward is to let this structure self-destruct so you can re-build and re-focus', 
    'The Tower Reversed suggests that you are undergoing a significant personal transformation and upheaval This differs from the experience of The Tower Upright where the change is often because of external circumstances and may even feel forced upon you Instead with The Tower Reversed you are instigating the change and calling into question your fundamental belief systems values purpose and meaning'
);
INSERT INTO cardtable 
VALUES (
    'The Star', 
    'the-star.jpg', 
    'Rider Waite Tarot Card', 
    'Hope, faith, renewal', 
    'Despair, disconnection', 
    'The star welcomes reprieve after a period of destruction and turmoil You have endured many challenges and stripped yourself bare of any limiting beliefs that have previously held you back You are making some significant changes in your life transforming yourself from the old you to the new you and in doing so you are bringing about a fresh perspective', 
    'The Star Reversed also shows that you are disengaged and uninspired with life or components of your life Perhaps you started out with great vision and enthusiasm but you are now finding yourself overwhelmed by day-to-day routines that are boring and dreary Reconnect to what is truly important to you and you will find new sources of inspiration'
);
INSERT INTO cardtable 
VALUES (
    'The Moon', 
    'the-moon.jpg', 
    'Rider Waite Tarot Card', 
    'Illusion, fear, anxiety', 
    'Repressed emotion, inner confusion, release', 
    'The Moon represents your fears and illusions coming out when you are projecting into the future based on your past experiences You may have a painful memory that caused emotional distress and rather than dealing with the emotions you pushed them down deep into your subconscious Now these emotions are making a reappearance and you may find yourself under their influence on a conscious or subconscious level', 
    'The Moon Reversed indicates that you have been dealing with illusion fears and anxiety and now the negative influences of these energies are subsiding You are working through this understanding the impact they have on your life and how you can free yourself from such limiting beliefs This is a liberating and transformational experience'
);
INSERT INTO cardtable 
VALUES (
    'The Sun', 
    'the-sun.jpg', 
    'Rider Waite Tarot Card', 
    'Positivity, success, vitality', 
    'Feeling down, inconveniences', 
    'The Sun represents success radiance and abundance The Sun gives you strength and tells you that no matter where you go or what you do your positive and radiant energy will follow you and bring you happiness and joy If you are going through a difficult time The Sun brings you the message you have been waiting for that things will get better', 
    'The Sun Reversed can mean you are struggling to see the bright side of life You may have experienced setbacks that damaged your enthusiasm and optimism and perhaps led you to question whether you can achieve what you set out to do Nonetheless The Sun is never a negative card so this is only temporary Obstacles can be removed if you put your mind to it It may just take a bit more effort'
);
INSERT INTO cardtable 
VALUES (
    'Judgement', 
    'judgement.jpg', 
    'Rider Waite Tarot Card', 
    'Rebirth, inner calling, absolution', 
    'Self-doubt, inner critic', 
    'Judgement pops up in a Tarot reading when you are close to reaching a significant stage in your journey You have evaluated your past experiences and have learned from them This integration has healed deep wounds and you are now able to put the past behind you You have found your absolution having cleared any regrets and releasing any guilt or sadness about the past This purging process will leave you refreshed and ready to take on any new challenges', 
    'Sometimes Judgement Reversed indicates your inner critic is coming through loud and clear You may doubt yourself or tell yourself negative messages This is impeding you being able to fulfil your highest potential and be your best self'
);
INSERT INTO cardtable 
VALUES (
    'The World', 
    'the-world.jpg', 
    'Rider Waite Tarot Card', 
    'Completion, integration, accomplishment', 
    'Seeking closure, delays', 
    'When The World card appears in a Tarot reading you are glowing with a sense of wholeness achievement fulfilment and completion A long-term project period of study relationship or career has come full circle and you are now reveling in the sense of closure and accomplishment', 
    'The World Reversed suggests that you are seeking closure on a personal issue You know deep down that to accept and embrace where you are now you need to let go of the past and move on Finding closure may be an intensely personal journey something you manage through journaling visualization energy work and therapy'
);

INSERT INTO cardtable_cups
VALUES 
    (
        'Ace of Cups',
        'ace-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Love, new relationships, compassion, creativity',
        'Self-love, intuition, repressed emotions',
        'This card often appears in Tarot readings when you are open to creative expression, especially when you can allow your emotions to shine through your endeavours. You may be inspired to start something new. You see fresh potential in allowing your creative juices to flow. Let your imagination and talent unfurl to new possibilities.',
        'The Ace of Cups reversed may be a sign that you are repressing your emotions, not wanting to express yourself fully to the outside world. You have your reasons for keeping your feelings close and not wanting others to know what is going on inside. Be careful that you do not create an internal blockage by repressing how you feel.'
    );

-- Insert for 'Two of Cups'
INSERT INTO cardtable_cups 
VALUES 
    (
        'Two of Cups',
        'two-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Unified love, partnership, mutual attraction',
        'Self-love, break-ups, disharmony, distrust',
        'The Two of Cups is the flow of love between two people. With this card, you are creating deep connections and partnerships, based on shared values and compassion. This relationship could be a lover, a friendship, or a business partnership. No matter what this card signifies, you are both focused on creating a relationship that is mutually beneficial.',
        'The Two of Cups reversed can sometimes signal a break-up or a falling out. You are out of sync with each other and do not share the same emotional connection you did in the past. Communication may be restricted, and the energy flow between you stifled. To turn this situation around, open up, share, and hold a safe space for one another to express your feelings.'
    );

INSERT INTO cardtable_cups 
VALUES 
    (
        'Three of Cups',
        'three-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Celebration, friendship, creativity, collaborations',
        'Independence, alone time',
        'The Three of Cups represents groups coming together to focus on a common emotional goal. People reach out emotionally to one another. It speaks of a sense of community, and can indicate the time to get more involved by helping.',
        'While the upright Three of Cups is a card of friendship and social events, the reversal of this card suggests that you would prefer to go it alone right now. You may have recently spent a lot of time with others and now just need some alone time. Honor your desire to step out of the social scene for a while and enjoy this time by yourself so you can get clear on who you most want to connect with in the future.'
    );

-- Insert for 'Four of Cups'
INSERT INTO cardtable_cups 
VALUES 
    (
        'Four of Cups',
        'four-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Meditation, contemplation, apathy, reevaluation',
        'Retreat, withdrawal, checking in for alignment',
        'The Four of Cups can appear when you are bored or dissatisfied with your everyday life. You may feel disengaged, apathetic or unmotivated – maybe life has become dull. The Four of Cups invites you to bring your attention inward and re-evaluate your situation to find a deeper meaning in what you do.',
        'The Four of Cups reversed reflects a period of introspection and withdrawal. You are retreating into your own inner world so you can concentrate on what is integral to you and what grounds you. Just be careful that you do not shut off your friends and loved ones or appear disinterested in their lives. Let them know you need some alone time and that you will reach out again when you are ready to re-emerge.'
    );
INSERT INTO cardtable_cups 
VALUES 
    (
        'Five of Cups',
        'five-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Regret, failure, disappointment, pessimism',
        'Personal setbacks, self-forgiveness, moving on',
        'The Five of Cups suggests you are stuck in the past and cannot let go. Old wounds and bitter memories flood your mind as you think about what happened. You may blame yourself or believe you are a victim of life’s circumstances. These negative emotions are holding you back from your fullest potential – release them so you can move on and create positive change.',
        'When this card turns up in a Tarot reading, you are realizing the full implications of the past, and you appreciate the lessons learned from the experience. You may even recognize the value of the painful experience in the broader scheme of things.'
    );

-- Insert for 'Six of Cups'
INSERT INTO cardtable_cups VALUES
    (
        'Six of Cups',
        'six-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Revisiting the past, childhood memories, innocence, joy',
        'Living in the past, forgiveness',
        'The Six of Cups upright generally represents generosity, naive happiness, and childhood. It can stand for you wanting to return to a happier time. You may feel that remembering these times is the only way to feel happy. The Six of Cups appearing in a reading seems to indicate that while we may look upon the past with a happy eye, we must avoid living in it.',
        'When the reversed Six of Cups appears in a reading, ask whether you are clinging to the past and losing touch with the present. Nostalgia may bring up positive or negative feelings, but either way, when you find yourself not living in the present, you miss out on the opportunities right in front of you. It is ok to indulge a little in reminiscing about the past, as long as you understand that true and lasting change can only happen in the present moment.'
    );

	INSERT INTO cardtable_cups 
VALUES 
    (
        'Seven of Cups',
        'seven-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Opportunities, choices, wishful thinking, illusion',
        'Alignment, personal values, overwhelmed by choices',
        'The Seven of Cups may be a sign of shiny object syndrome, where you keep finding the next big thing but fail to see any of those new opportunities through to the end. When you are constantly in the idea phase, you miss the chance to bring your designs into fruition.',
        'As a card of choices and options, the reversed Seven of Cups can mean you are overwhelmed by choice and cannot move forward. Reduce your options and focus on what is important to you. You do not need to keep searching for that big idea; you have what you need. Make your pick and move forward with it.'
    );

-- Insert for 'Eight of Cups'
INSERT INTO cardtable_cups VALUES
    (
        'Eight of Cups',
        'eight-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Disappointment, abandonment, withdrawal, escapism',
        'Indecision, aimless drifting, walking away',
        'You may feel compelled to walk away from a disappointing situation. You have invested yourself emotionally but, despite your best efforts, are disappointed; it has not turned out the way you had expected it to, and you realize that you are no longer getting anything out of this situation. Now, the only choice is to put it behind you and move on with your life, even if it brings you sadness as you say goodbye.',
        'The reversed Eight of Cups invites you to listen to your heart about your next course of action. Others may have an opinion, but it comes down to what is important to you. Only you know whether this situation is serving you and if there is hope for the future. Be mindful of what you want and then check in to see if this move is in alignment with your goals and dreams.'
    );
INSERT INTO cardtable_cups 
VALUES 
    (
        'Nine of Cups',
        'nine-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Contentment, satisfaction, gratitude',
        'Inner happiness, materialism, dissatisfaction',
        'The Nine of Cups is about expressing gratitude and it is an invitation to splurge, indulge and enjoy life’s pleasures. Live in the moment and give yourself permission to indulge temporarily without any guilt about the possible negative consequences of such pleasure.',
        'Sometimes, the reversed Nine of Cups suggests that you are frustrated that your wishes have not yet come true. Your expectations may be unrealistic, or you may not be actively pursuing your dreams. You may need to tweak your goals to keep them in full alignment with your personal values. And you may need to be more proactive in creating an action plan to see your goals come to fruition.'
    );

-- Insert for 'Ten of Cups'
INSERT INTO cardtable_cups 
VALUES 
    (
        'Ten of Cups',
        'ten-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Divine love, blissful relationships, harmony, alignment',
        'Disconnection, misaligned values, struggling relationships',
        'When the Ten of Cups pops up in a Tarot reading, you have a sense of wholeness, completion, and alignment in your relationships with others. You are experiencing an idyllic state of peace, harmony and love where your dreams and wishes have come true. Take a moment to step back and appreciate everything you accomplished. You created a life of connection and bliss by following your heart and trusting your intuition.',
        'The Ten of Cups may suggest that you are neglecting relationships in your life while you pursue more material goals. Your work-life balance is skewed and your relationships will suffer because of that, you may not achieve an overall sense of contentment and happiness as planned.'
    );

INSERT INTO cardtable_cups 
VALUES 
    (
        'Page of Cups',
        'page-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Creative opportunities, intuitive messages, curiosity',
        'Doubting intuition, creative blocks, emotional immaturity',
        'The Page of Cups invites you to have an open and curious mind. It is with a curious mind that you will discover new aspects of life and yourself. Open your mind to all possibilities, especially those of a creative or intuitive nature, you will be pleasantly surprised. Be ready to dream the impossible dream, and explore the magic of your fullest potential, even if it seems out of reach.',
        'With the Page of Cups reversed, you may feel called to pursue a new creative project, but you doubt whether you can really make it work. Your inner critic may be on over-drive or others are telling you that you are dreaming – so you are stalling and holding back. Listen to your intuition to understand if fear is getting in the way and whether it is time to just give it a go regardless of the outcome.'
    );

-- Insert for 'Knight of Cups'
INSERT INTO cardtable_cups 
VALUES 
    (
        'Knight of Cups',
        'knight-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Creativity, romance, charm, imagination, beauty',
        'Overactive imagination, unrealistic, jealous, moody',
        'When the Knight of Cups appears in a Tarot reading, you are inspired by the many creative outlets available to you. It may be an art project or something you feel ‘called’ to do, based on your emotions, imagination and intuition. Keep in mind that true imagination feeds on action; if you do nothing with your dreams, they will remain just that – dreams and not reality.',
        'When the reversed Knight of Cups appears in a Tarot reading, a creative project is emerging, but you are not ready to act on it just yet. You may spend most of your time dreaming up what is possible or how wonderful it will be when it comes to fruition. While it can be enriching to be in the dreamy, ideas phase for a while, the plan will not come into being until you take action. You may need to ground your ideas into reality.'
    );
INSERT INTO cardtable_cups  
VALUES 
    (
        'Queen of Cups',
        'queen-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Compassionate, caring, emotionally stable, intuitive',
        'Inner feelings, self-care, self-love, co-dependency',
        'When the Queen of Cups appears in a Tarot reading, you are being asked to trust your intuition and pay attention to your feelings and emotions. Lead with your heart, not your head. Be open to receive the intuitive messages flowing to you, be it through your dreams, meditation or visualisation.',
        'When the reversed Queen of Cups shows up in a Tarot reading, you need to draw your attention inwards and focus on your emotional well-being. You are great at taking care of others – but now it is time to take care of you. This card suggests that you are emotionally drained because you have been so busy supporting others, but not yourself. You may need to set firm boundaries with your loved ones so that they know you love them but will not take on their emotional baggage.'
    );

-- Insert for 'King of Cups'
INSERT INTO cardtable_cups 
VALUES 
    (
        'King of Cups',
        'king-of-cups.jpg',
        'Rider Waite Tarot Card',
        'Emotionally balanced, compassionate, diplomatic',
        'Self-compassion, inner feelings, moodiness',
        'The King of Cups suggests you need to remain emotionally mature when faced with negative energy from others. Be firm on your personal boundaries, stating what is and is not acceptable on an emotional level. He uses his intellect to make smart decisions and does not let other circumstances or whims sway him from his central beliefs and morals. Stay true to your emotions and feelings and do not allow others to steer you off course.',
        'The reversed King of Cups indicates that you are focusing your attention on your innermost feelings. You are discovering the emotions stored in your subconscious mind and how these emotions affect you. Through this work, you hope to gain a stronger sense of control over your emotional well-being so that your feelings do not steer you away from living your best life.'
    );

INSERT INTO cardtable_swords 
VALUES (
    'Ace of Swords', 
    'ace-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Breakthroughs, new ideas, mental clarity, success', 
    'Inner clarity, re-thinking an idea, clouded judgement', 
    'The Ace of Swords marks a wave of new energy from the intellectual realms. You may be on the verge of a significant breakthrough or a new way of thinking that allows you to view the world with clear eyes. Or, you may have a sudden realization or conscious understanding about an issue that has been troubling you and can finally see the path ahead of you.', 
    'The Ace of Swords reversed can also suggest clouded judgement and lack of mental clarity around a specific situation. You are missing relevant information or evidence that will help you decide, so invest your time and energy into seeking out the truth rather than just taking things at face value.'
);

-- Insert for Two of Swords
INSERT INTO cardtable_swords 
VALUES (
    'Two of Swords', 
    'two-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Difficult decisions, weighing up options, an impasse, avoidance', 
    'Indecision, confusion, information overload, stalemate', 
    'The Two of Swords indicates that you are facing a challenging decision, but you are unclear about which option to take. Both possibilities may seem equally good – or equally bad – and you are stumped about which will lead you to the best outcome. You must be able to weigh up the pros and cons of each choice and then make a conscious judgment. Use both your head and your heart to choose the path best for you.', 
    'The Two of Swords reversed suggests that you are caught between a rock and a hard place, and it feels impossible to make the right decision as you believe either option will lead to negative consequences. As a result, you are finding yourself feeling stuck and unable to move forward, which is just making the situation worse.'
);

INSERT INTO cardtable_swords 
VALUES (
    'Three of Swords', 
    'three-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Heartbreak, emotional pain, sorrow, grief, hurt', 
    'Releasing pain, optimism, forgiveness', 
    'The Three of Swords comes as a reminder that pain, sorrow and grief are a necessary part of life. Without pain, you would never experience the challenges you need to grow and develop as a person. Every hardship creates discomfort, which inevitably turns into an opportunity to become stronger, learn from your mistakes, and change the course of your life for the better. While the pain may cloud your vision for a time, it will eventually bring clarity and enable you to put the past behind you.', 
    'You were hurt by a situation that affected you deeply. Thankfully, the reversal of this card suggests that this time has passed, and you are on the path to recovery, realizing that with every cloud comes a silver lining and you have other things in your life which bring you joy. You have reached a point where you can accept the pain and are ready to move forward.'
);

-- Insert for Four of Swords
INSERT INTO cardtable_swords 
VALUES (
    'Four of Swords', 
    'four-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Rest, relaxation, meditation, contemplation, recuperation', 
    'Exhaustion, burn-out, deep contemplation, stagnation', 
    'The Four of Swords presents a new challenge: to stay silent and inactive. Now is the time to build up your mental strength by clearing your mind of any mental clutter or stress. Meditate and spend time in a place that creates peace, calm and tranquility for you.', 
    'The Four of Swords reversed sends a powerful message that you need to take time out to rest and recharge your energy. You may be working long hours, giving your time and energy to others in need, or involved in a highly stressful and demanding undertaking. You are close to exhaustion, and your energy reserves are running low or on empty. If you do not stop and take some much-needed rest now, you may crash and burn out.'
);

INSERT INTO cardtable_swords 
VALUES (
    'Five of Swords', 
    'five-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Conflict, disagreements, competition', 
    'Reconciliation, making amends, past resentment', 
    'The Five of Swords turns up when you have had a falling out, disagreement or conflict. As you try to pick up the pieces and set the conflict behind you, you find it is more difficult than you thought; others have lost faith in you and are keeping their distance. You will need to decide whether your point of view is so important to you that you are willing to put your relationships in jeopardy, or if you can compromise and see eye-to-eye.', 
    'There may be residual resentment following a recent or past argument with someone close to you. You have had some very challenging and heated conversations together, and you still harbor negative emotion from these discussions. If the conflict remains unresolved and unaddressed, it may be impacting your ability to create a harmonious relationship.'
);

-- Insert for Six of Swords
INSERT INTO cardtable_swords 
VALUES (
    'Six of Swords', 
    'six-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Transition, change, rite of passage, releasing baggage', 
    'Personal transition, resistance to change, unfinished business', 
    'The Six of Swords shows that you are in a state of transition, leaving behind what was familiar and moving towards the unknown. You may feel sad to leave behind what is so familiar to you. However, you know this move is essential for your growth and personal development. The sadness over what you have lost will soon be replaced by greater mental clarity and a renewed acceptance of change. You will become a better person as a result.', 
    'The Six of Swords reversed indicates that you know you need to make a change or transition in your life but are reluctant to do so. That discomfort can be a positive sign that growth is happening, so feel into that energy and let it encourage you to keep moving forward and expanding yourself.'
);

INSERT INTO cardtable_swords 
VALUES (
    'Seven of Swords', 
    'seven-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Betrayal, deception, getting away with something, acting strategically', 
    'Imposter syndrome, self-deceit, keeping secrets', 
    'The Seven of Swords indicates theft, betrayal, deception and trickery. You may be trying to get away with something and are sneaking around behind other peoples backs, hoping to go undetected. Be aware that any time you use cunning or deception to gain an advantage over someone or something else, you are at risk of being found out. And even if you are not, the cover-up will require a tremendous amount of effort, and it may not be worth it.', 
    'The Seven of Swords often appears reversed when you feel like a fraud and are suffering from imposter syndrome. You may doubt yourself and your abilities. Know that this is fear talking. Get out of your head and trust that you have everything you need to make your new venture a success.'
);

-- Insert for Eight of Swords
INSERT INTO cardtable_swords 
VALUES (
    'Eight of Swords', 
    'eight-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Negative thoughts, self-imposed restriction, imprisonment, victim mentality', 
    'Negative thoughts, self-imposed restriction, imprisonment, victim mentality', 
    'The Eight of Swords reveals that you feel trapped and restricted by your circumstances. You believe your options are limited with no clear path out. You may be over-thinking things, creating negative patterns or limiting yourself by only considering the worst-case scenario. The more you think about the situation, the more you feel stuck and without any options. It is time to get out of your head and let go of those thoughts and beliefs holding you back.', 
    'When the Eight of Swords appears reversed, it can show that you are releasing yourself from negative patterns and belief systems. You made it through a difficult time, and you are more open to change and self-acceptance.'
);
INSERT INTO cardtable_swords 
VALUES (
    'Nine of Swords', 
    'nine-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Anxiety, worry, fear, depression, nightmares', 
    'Inner turmoil, deep-seated fears, secrets, releasing worry', 
    'The Nine of Swords reminds you that much of the fear and worry you are experiencing is in your head and not necessarily an accurate reflection of what is happening around you. You may make things worse for yourself by over-thinking or obsessing over the worst-case scenarios. It is time to examine your situation from a new perspective. Instead of looking for evidence of what is going wrong, put your attention on what is going right.', 
    'You may try to keep your worries private and personal to you, but if you are struggling to keep your head above water, it may now be time to confide in others and seek their help and support. Others will offer you a new perspective, or even just a place to vent, that will ease some of the stress and tension.'
);

-- Insert for Ten of Swords
INSERT INTO cardtable_swords 
VALUES (
    'Ten of Swords', 
    'ten-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Painful endings, deep wounds, betrayal, loss, crisis', 
    'Recovery, regeneration, resisting an inevitable end', 
    'When the Ten of Swords appears in a Tarot reading, you may be the victim of another persons betrayal or deceit. You feel as if you have been stabbed in the back and are reeling from someone else’s actions. In that way, the Ten of Swords is about letting go and accepting your current circumstances. You no longer resist change but allow it to happen, even if it causes initial pain and hurt to you.', 
    'The Ten of Swords reversed can appear as a welcome sign that the pain and sadness you have been feeling is ending. You are releasing the memories of the past and allowing yourself the opportunity to move forward with a sense of renewal and hope for the future.'
);

INSERT INTO cardtable_swords 
VALUES (
    'Queen of Swords', 
    'queen-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Independent, unbiased judgement, clear boundaries, direct communication', 
    'Overly emotional, easily influenced, cold hearted', 
    'This card also means that you will need to become independent with your judgments. You must rely on the unbiased intelligence, which has you researching alternative viewpoints and thinking carefully on your decision. Compassion and empathy in these cases can distract you from your task, so you need you are trying to keep a strong objective view while avoiding getting emotions involved.', 
    'The Queen of Swords reversed points out that you may allow your emotions to get the better of you as you put your heart before your head. You may be emotionally involved in a particular issue, and it could be distorting your perception of the situation at hand.'
);

-- Insert for King of Swords
INSERT INTO cardtable_swords 
VALUES (
    'King of Swords', 
    'king-of-swords.jpg', 
    'Rider Waite Tarot Card', 
    'Mental clarity, intellectual power, authority, truth', 
    'Quiet power, inner truth, misuse of power, manipulation', 
    'The King of Swords encourages you to use your logic and intellect to navigate the path ahead. You will need to make firm and well researched decisions and stay fair in your dealings with others. You need to be able to take any situation, look at it with total impartiality, and then come to a balanced and insightful decision.', 
    'The reversed King of Swords can also reflect a lack of decisiveness about where your best opportunities lie or in what direction you want to go. You may also lack the mental clarity to work out what you need to do in your situation. Your thoughts are scattered and may start to feel panicky and out of control.'
);

INSERT INTO cardtable_pentacles 
VALUES (
    'Ace of Pentacles', 
    'ace-of-pentacles.jpg', 
    'Rider Waite Tarot Card', 
    'A new financial or career opportunity, abundance', 
    'Lost opportunity, lack of planning and foresight', 
    'The Ace of Pentacles heralds a sense of prosperity and abundance in the material or financial areas of your life. It undoubtedly comes as a welcome invitation but it is not a free ride. As with all Aces in the Tarot deck, this card illustrates the possibility of a new endeavour but does not guarantee its manifestation or success. That piece is up to you.', 
    'When the reversed Ace of Pentacles appears in a Tarot reading, you may feel hesitant about moving forward with an opportunity. You may catch yourself doubting whether you have what it takes to see it through. Do not move forward until you are ready. Assess the feasibility of your idea and its potential outcomes. Perform your due diligence and figure out if this opportunity is meant for you or not.'
);

-- Insert for Two of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Two of Pentacles', 
    'two-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Multiple priorities, time management, prioritisation, adaptability', 
    'Over committed, disorganisation, reprioritisation', 
    'When the Two of Pentacles appears in a Tarot reading, it is safe to say you are juggling your priorities, roles and responsibilities very well, but this Two reminds you that the line between coping with these demands and losing control is thin. You need to manage your time, energy and resources carefully so you do not lose your balance.', 
    'The reversed Two of Pentacles can also be a sign you are over investing in one area of your life at the expense of others. This card calls your awareness to the concept of balance and those parts of your life where you have it (and those where you do not), see it as a reminder to be patient, flexible and adaptable as you try to juggle your responsibilities.'
);

INSERT INTO cardtable_pentacles 
VALUES (
    'Three of Pentacles', 
    'three-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Teamwork, collaboration, learning, implementation', 
    'Disharmony, misalignment, working alone', 
    'As you implement your plans, you will realize that you have the skills, capabilities and resources you need to accomplish your objectives. See the Three of Pentacles as an encouragement that you are on the right track. You are competent at what you do, and you are making progress. Adequate preparation, management and organization are also integral components of the Three of Pentacles.', 
    'Reversed, the Three of Pentacles suggests you may be grappling with a lack of harmony with fellow team members, making it difficult to complete a project. You may not be listening or valuing one another’s opinions and ideas. If this resonates, you need to realign with the original goals of the project and make new agreements about how you will work together to achieve those goals.'
);

-- Insert for Four of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Four of Pentacles', 
    'four-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'New beginnings, spontaneity, a free spirit', 
    'Hesitation, recklessness, risk taking', 
    'The Four of Pentacles is a warning against greed when it comes to material possessions. The broader lesson with the Four of Pentacles is to honour and respect money and wealth but do not become so attached that you lose sight of what is most important to you.', 
    'The Four of Pentacles can appear in a Tarot reading when you are in self protection mode. You have a strong desire for security, stability and certainty and you are doing everything within your power to create a stable environment for yourself. Even when your outer world seems chaotic and in a constant state of change, you can create more certainty for yourself by controlling your inner environment.'
);

-- Insert for Five of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Five of Pentacles', 
    'five-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'New beginnings, spontaneity, a free spirit', 
    'Hesitation, recklessness, risk taking', 
    'At times, the Five of Pentacles highlights a lack mindset. You are sabotaging your ability to create abundance because you only focus on what you lack. All you can see is what is going wrong. To shift this energy, look for evidence of what you do have, even if it is very small or seemingly insignificant, and express your gratitude for those blessings in your life. Over time, the positive aspects will continue to grow.', 
    'The Five of Pentacles reversed indicates an end to difficult times, particularly if you have recently suffered a major financial hit or job loss. You may be starting to feel as if life is worth living again and regaining your self confidence. Finally, you can see a way out of your financial difficulties and your hope is renewed.'
);

-- Insert for Six of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Six of Pentacles', 
    'six-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Giving, receiving, sharing wealth, generosity, charity', 
    'Self care, unpaid debts, one sided charity', 
    'This card signifies you offer up your time, energy, love and support to those who are in need, knowing it will be appreciated. There may be times when you wonder if you can truly afford to give generously to others and the wise advice of the Six of Pentacles is to trust that every contribution you make is valued and will come back to you threefold.', 
    'The Six of Pentacles reversed can suggest that while you are giving to others freely, they are not giving back in return. They may fail to return the favor and show a lack of gratitude and appreciation. It is a one way street, and you may feel as if they are taking advantage of you. While you cannot change the other persons response or force them to repay the favor, you can learn from the experience.'
);

-- Insert for Seven of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Seven of Pentacles', 
    'seven-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Long term view, sustainable results, perseverance, investment', 
    'Lack of long term vision, limited success or reward', 
    'The Seven of Pentacles encourages you to take a long term view and assess where you can best invest your time and energy for the maximum output. You do not want to keep putting your heart and soul into something if you will not reap the rewards for your work and you have undoubtedly seen that some areas in your life are just energy sappers.', 
    'The reversed Seven of Pentacles suggests that even though you may continue to invest a lot of energy into a specific situation, you may not reap the rewards you are looking for. As such, this card calls on you to prioritise your activities carefully. You need to do a cost benefit analysis of the major tasks involved to bring your project to fruition, as some are taking a lot of your time and energy without bearing the rewards you are seeking.'
);

-- Insert for Eight of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Eight of Pentacles', 
    'eight-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Apprenticeship, repetitive tasks, mastery', 
    'Self development, perfectionism, misdirected activity', 
    'More broadly, the Eight of Pentacles suggests you are working away at the finer details of the various aspects of your life, in an effort to continuously improve your situation. You may be unhappy with your current state, and you know you need to make some important changes in your life to increase your overall satisfaction. This card is a positive sign that you are committed to making those changes and to ensuring that you give yourself the best possible chance.', 
    'The reversed Eight of Pentacles can appear in a Tarot reading when you are focused on self improvement and personal development. You are highly disciplined and focused when it comes to understanding your inner beliefs and behaviours, and you are dedicated to becoming the best version of yourself.'
);

-- Insert for Nine of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Nine of Pentacles', 
    'nine-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Abundance, luxury, self sufficiency, financial independence', 
    'Self worth, over investment in work, hustling', 
    'The Nine of Pentacles also speaks of financial independence. The woman in this card has created a luxurious lifestyle by her own actions and efforts. She encourages you to do the same to create abundance and independence so that you can take care of yourself in the long term. Invest wisely and seek financial advice to make the most of your wealth. Don’t rely on others to support you.', 
    'The reversed Nine of Pentacles is all about self worth. When you see this card in a Tarot reading, take the opportunity to reflect on your own sense of self worth and value.'
);

-- Insert for Ten of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Ten of Pentacles', 
    'ten-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Wealth, financial security, family, long term success, contribution', 
    'The dark side of wealth, financial failure or loss', 
    'This card reflects permanence and creating a lasting foundation for future success. It is a card of commitment to a sustainable future, taking into consideration not just the short term gains of a particular venture but also the long term benefits. A consistent approach will achieve success that will last the test of time.', 
    'The Ten of Pentacles reversed may show that you are experiencing challenges or setbacks with financial or job security and family stability. Your investments may have lost significant value, your marriage may be on the rocks, or your job may be at risk. It is time to re evaluate your position and choose a course of action that will help you regain your sense of security and self worth.'
);
-- Insert for Page of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Page of Pentacles', 
    'page-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Financial opportunity, skill development', 
    'Lack of progress, procrastination, learn from failure', 
    'This Page reminds you about the need to put in place clear plans for achieving your dreams and goals. Stay focused on the practical and tangible elements, keeping your feet planted on the ground and not getting carried away, always looking for the next realistic and achievable step forward. Your common sense and a pragmatic approach will lead you to a solution that works.', 
    'The Page of Pentacles reversed invites you to learn from your past mistakes. Even if a situation has not worked out the way you expected it would, you can discover new aspects of yourself that might help in the future. Be open minded and curious, and trust that today’s failures will lead to tomorrow’s successes.'
);

-- Insert for Knight of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Knight of Pentacles', 
    'knight-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Hard work, productivity, routine, conservatism', 
    'Self discipline, boredom, feeling stuck, perfectionism', 
    'Sometimes, the Knight of Pentacles points to the more mundane or boring aspects of life – the daily grind, repetitive schedules, household chores, and other responsibilities and obligations. You may be assigned a project or given a task to do, and you will have to commit your time to see that project through to the end successfully.', 
    'On the flipside, the Knight of Pentacles might also suggest that you are feeling stuck in the daily grind and life has become boring and dull. While you may have implemented a routine and schedule to increase your productivity and efficiency, you are now finding it stifling to your creativity and innovation. It may be time to do something different. Be spontaneous. You don’t always have to stick to the rules.'
);
-- Insert for Queen of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'Queen of Pentacles', 
    'queen-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Nurturing, practical, providing financially', 
    'Financial independence, self care', 
    'This Queen asks you to maintain a compassionate, nurturing, practical and down to earth attitude when dealing with others and your present circumstances. Focus on creating a calm and balanced life for yourself. Be resourceful and practical, dealing with issues as they arise using straightforward solutions that fix the problem with minimal fuss.', 
    'Similarly, an inverted Queen of Pentacles can point to an inner conflict when it comes to balancing work and personal priorities. Despite trying to make it work, you may consistently feel that you’re not giving enough of your attention to either your work or home life. Sometimes, you just cannot do everything, and you will need to make some choices about where your priorities truly lie.'
);

-- Insert for King of Pentacles
INSERT INTO cardtable_pentacles 
VALUES (
    'King of Pentacles', 
    'king-of-coins.jpg', 
    'Rider Waite Tarot Card', 
    'Wealth, business, leadership, security, discipline, abundance', 
    'Financially inept, obsessed with wealth and status, stubborn', 
    'The King of Pentacles knows that a methodical, planned and well thought out approach will lead you to success. You have experimented in the past with what works best and have landed on your own methods and practices you know will continue to work for you in the future. Continue down this path rather than trying new ways of doing things. You do not need to take any more risks.', 
    'At times, the reversed King of Pentacles represents someone who is very stubborn and rigid in his approach. Being grounded is a good thing, but give yourself permission every now and then to break free and do something different. You don’t have to be so serious all of the time.'
);

-- Insert for Ace of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Ace of Wands', 
    'ace-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Inspiration, new opportunities, growth, potential', 
    'An emerging idea, lack of direction, distractions', 
    'The Ace of Wands encourages you to follow your heart and live your passion. If you feel a strong pull towards a new project or path, but are questioning whether it will work, then this card gives you a gentle nudge to pursue your passion. You can always start out small, treating the project or idea as an experiment or trial. Let your energy, dedication and motivation be your guides.', 
    'The reversed Ace of Wands can suggest that you are finding it difficult to define your purpose in life and what you want to create. This lack of direction may sap your energy and leave you unmotivated and uninspired. To remedy this stagnation, you need first to focus on where your true passions lie. So, take time to contemplate what it is you aspire to and what you wish to achieve out of this situation.'
);

-- Insert for Two of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Two of Wands', 
    'two-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Future planning, progress, decisions, discovery', 
    'Personal goals, inner alignment, lack of planning', 
    'The Two of Wands is about discovery, particularly as you step outside your comfort zone and explore new worlds and experiences. It may take courage to set out, but this card gives you the confidence of self-knowledge. You know what your goal is and are sure of its eventual fulfilment. Let your intuition and passion guide you as you confirm your next steps.', 
    'The Two of Wands reversed encourages you to draw your attention inwards and focus on your personal goals. Consider what is truly important to you. You may have headed in one direction, only to realize it wasn’t in full alignment with your true values and purpose. This card invites you to go back to the drawing board and reconnect with your dreams and ambitions, then make the necessary adjustments.'
);

-- Insert for Three of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Three of Wands', 
    'three-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Progress, expansion, foresight', 
    'Playing small, lack of foresight, unexpected delays', 
    'The Three of Wands signals the many chances available to you to broaden your horizons. You are becoming more aware of the opportunities that exist for you right now – and there are still more to come. To take advantage of this potential, you must stay committed to your path and be prepared to stretch beyond your comfort zone, knowing your best hopes lie outside of your current environment.', 
    'The Three of Wands reversed suggests that growth and expansion are available to you, but you are choosing to play it safe and stay within your comfort zone. As a result, you are closing yourself off from new opportunity and limiting your potential.'
);

-- Insert for Four of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Four of Wands', 
    'four-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Celebration, joy, harmony, relaxation', 
    'Personal celebration, inner harmony, conflict with others, transition', 
    'In numerology, four symbolises stability and firm foundations, and with the Four of Wands, you are now enjoying a period of happiness and security. This card indicates a sense of harmony and balance as well as completion and thus denotes a time of peace and contentment in life that comes as the result of hard-fought efforts.', 
    'Given the upright Four of Wands reflects stability, the reversal of this card can suggest that you are going through an upheaval during which you have little stability and security. You may experience multiple changes in your life. While you know this is an important transition – one you need to make – it can be quite unsettling, knocking you out of balance and making you feel uncertain about your future.'
);

-- Insert for Five of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Five of Wands', 
    'five-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Conflict, disagreements, competition, tension', 
    'Inner conflict, conflict avoidance, tension release', 
    'In the Tarot, the Fives typically represent conflict and change, and the Five of Wands is no exception. This card indicates that you are in the midst of battle, tension, and competition with others and it is impacting your ability to move forward with your goals. Rather than being able to work towards a common goal, you are running up against constant opposition.', 
    'The Five of Wands reversed can suggest that you have the tendency to avoid conflict wherever feasible. The trouble, however, is that in doing this you may just be pushing some of your concerns to the side without dealing with them or asserting your point of view. Some conflict can be useful, particularly if it is constructive and draws out the underlying issues in a way that then generates a better solution.'
);

-- Insert for Six of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Six of Wands', 
    'six-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Success, public recognition, progress, self-confidence', 
    'Private achievement, personal definition of success, fall from grace, egotism', 
    'While the Six of Wands marks an important milestone, keep in mind that you’re not quite at the finish line just yet. You still have some way to go, and challenges may sit on the path ahead – but take heart knowing you have the support of those around you and they are here to back you.', 
    'The reversed Six of Wands encourages you to create your own definition of success. If you have found yourself seeking approval and validation or comparing yourself to others, you may have stripped yourself of your personal power and self-belief. When you are clear about what success means to you, you will make better decisions that are more in alignment with who you really are, and increase your confidence and independence.'
);
-- Insert for Seven of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Seven of Wands', 
    'seven-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Challenge, competition, protection, perseverance', 
    'Exhaustion, giving up, overwhelmed', 
    'The Seven of Wands can mean a challenge to the success of a creative project from an external source. Someone or something may get in the way of you being able to pursue your goals and dreams. While it appears to block your path forward, you can overcome this obstacle by drawing upon your strong self-confidence, self-belief, and continual self-improvement.', 
    'The Seven of Wands reversed shows that external pressure is weighing you down, leaving you doubting yourself and whether everything is worth it. It may seem as if you are under constant opposition. At first, you could hold firm, but after a relentless battle, you are now exhausted and ready to give up altogether. Stand strong, own your position and don’t change who you are just to keep others happy.'
);

-- Insert for Eight of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Eight of Wands', 
    'eight-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Movement, fast paced change, action, alignment', 
    'Delays, frustration, resisting change, internal alignment', 
    'The Eight of Wands encourages you to go with the flow; don’t resist it. Everything is moving fast right now, so make the most of this forward. Allow the energy to flow through you and propel you closer to your goal. Trying to slow things down because you’re not ready or you’re fearful about the unknown will just waste this opportunity. Use the energy instead to fuel positive change and produce significant results.', 
    'The Eight of Wands reversed suggests that you are charging ahead with an idea or plan, but you need to slow down and consider your next steps before continuing. You may miss something in your haste and be prone to making mistakes or poor decisions. Or, you may rush into things without a clear plan of where you are heading, instead of investing time into trivial tasks.'
);

-- Insert for Nine of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Nine of Wands', 
    'nine-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Resilience, courage, persistence, boundaries', 
    'Hesitation, recklessness, risk taking', 
    'Just when you think you are making progress, you suffer another setback. The Nine of Wands asks you to trust that this is merely a test of your resilience, and know that every time you overcome an obstacle, you are getting stronger. You have the inner resources necessary to overcome any difficulty you encounter. See this Nine as an assurance that you will eventually prosper if you maintain your position.', 
    'Sometimes, the reversed Nine of Wands can indicate paranoia, defensiveness and concern that everyone is out to get you. You may think you are always under attack by the same group of people or you are unfairly targeted. Often, this is a sign of fear from within you rather than an actual external threat. Focus on your own game and don’t worry about what other people are thinking or saying about you.'
);

-- Insert for Ten of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Ten of Wands', 
    'ten-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Burden, extra responsibility, hard work', 
    'Hesitation, recklessness, risk taking', 
    'The Ten of Wands appears when you are unconsciously taking on extra responsibility and finding yourself feeling weighed down, exhausted and burnt out. You may try to do everything at once, even though you know it is adding extra pressure. The Ten of Wands asks you to stop and examine your current lifestyle. Assess which activities or tasks are urgent or important, particularly concerning your goals.', 
    'The Ten of Wands reversed suggests that you are carrying a heavy weight on your shoulders, but you are keeping this private and are unwilling to share your burden with others. In effect, you are pushing away the people who can help you. It may also be a huge relief to you when you do share some of this burden with others, as they are ready and willing to support you.'
);

-- Insert for Page of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Page of Wands', 
    'page-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Inspiration, ideas, discovery, limitless potential, free spirit', 
    'Newly formed ideas, redirecting energy, self limiting beliefs', 
    'With the Page of Wands, you are inclined to give anything and everything a go. You embrace the opportunity to start out on a new journey or project and see where it takes you. You do not necessarily have a solid plan in place, nor do you really know where you are headed, but you are excited about the possibilities.', 
    'The Page of Wands reversed can indicate that your eagerness to start something new has been hampered by complexities, obstacles and opposition, which has resulted in a lack of motivation and indecisiveness about your path forward. You may be allowing limiting beliefs and inner fears and anxieties to get in the way of achieving your dreams.'
);

-- Insert for Knight of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Knight of Wands', 
    'knight-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Energy, inspired action, adventure, impulsiveness', 
    'Passion project, haste, scattered energy', 
    'You are bold and courageous and willing to venture into unknown territories to further your mission and your dreams. You don’t really care if danger lies ahead – in fact, if it does, then it becomes all the more exciting and thrilling for you. Adventures like this light you up because you know growth and expansion are waiting on the other side. Be a pioneer and take calculated risks to reach new heights.', 
    'The Knight of Wands reversed also suggests that you are at risk of acting impulsively, doing or saying things that you may later regret. You want everything to be ‘fixed’ straight away, but you do not allow yourself the time to think through what is best for you. Be careful, too, that you are not reacting instantly to everything that happens. Give your circumstances some space and time before you take action.'
);

-- Insert for Queen of Wands
INSERT INTO cardtable_wands 
VALUES (
    'Queen of Wands', 
    'queen-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Courage, confidence, independence', 
    'Self respect, self confidence, introverted', 
    'The Queen of Wands asks you to be bold in your undertakings and actions. Don’t be afraid to own your real power and put it out into the world. You have so much to offer – so shine your light bright! Believe in yourself and what you stand for, and dont be afraid to speak up and be heard. No one will silence you.', 
    'If you have lacked in confidence, the Queen of Wands reversed invites you to bring your energy and attention inward and focus on rebuilding your sense of self and your resilience. You may have handed your power over to others by paying too much attention to their thoughts and opinions. Now, you need to bring your awareness inward, so you can hear yourself and access your personal strengths and talents.'
);

-- Insert for King of Wands
INSERT INTO cardtable_wands 
VALUES (
    'King of Wands', 
    'king-of-wands.jpg', 
    'Rider Waite Tarot Card', 
    'Natural born leader, vision, entrepreneur, honour', 
    'Impulsiveness, haste, ruthless, high expectations', 
    'The King of Wands reminds you to lead your life with intent, vision and a long-term view. You have a grand idea of what is truly possible, and you will stop at nothing to see it through. Unlike the Knight who can be a little impulsive with his actions, you have the maturity to see your vision through right to the end and beyond.', 
    'On a personal level, the King of Wands reversed warns you against setting unrealistic expectations for yourself and others. While you are highly ambitious, you may be setting yourself up for failure if you set goals that are significantly out of reach and then pushing hard to reach those unattainable goals.'
);


INSERT INTO readertable 
VALUES 
    (N'HANNIE', N'Expert',N'https://www.facebook.com/profile.php?id=100087131240719','t1.jpg', N'180 Nguyễn Văn Linh, Thạc Gián, Thanh Khê, Đà Nẵng', '123456789', N'Tarot Reader Hannie là một trong những người có kinh nghiệm bói tarot có nhiều kinh nghiệm tại Việt Nam. Với hơn 8 năm kinh nghiệm trong lĩnh vực xem Tarot, Hannie là một chuyên gia bói Tarot đáng tin cậy để kết nối, giải mã các thông điệp mà vũ trụ muốn gửi đến khách hàng.', N'Tarot Re
	ader Hannie sở hữu khả năng chuyên môn trong việc giải mã và phân tích các lá bài Tarot để đưa ra những dự đoán và lời khuyên phù hợp cho từng cá nhân. Hannie có khả năng kết nối sâu sắc với khách hàng, giúp họ khám phá và hiểu rõ hơn về bản thân thông qua mỗi lần trải bài.', N'Chúng tôi là một đội ngũ chuyên nghiệp và đam mê Tarot, với nhiều năm kinh nghiệm trong lĩnh vực này.

Với 8 năm kinh nghiệm Tarot quý báu để tư vấn cho khách hàng, Hannie còn tham dự nhiều khóa học nâng cao và hội thảo về Tarot, trau dồi các kỹ năng tư vấn và định hướng cho từng cá nhân khác nhau.

Tarot Reader Hannie không chỉ dừng lại ở việc tư vấn cá nhân mà còn tích cực tham gia các hoạt động cộng đồng. Hannie thường xuyên tổ chức các buổi workshop, chia sẻ kiến thức và kinh nghiệm về Tarot, Chiêm Tinh, Thần số học, và Tealeaf. Các buổi chia sẻ này không chỉ giúp mọi người tiếp cận gần hơn với Tâm Linh mà còn tạo ra một cộng đồng kết nối, nơi mọi người có thể cùng nhau học hỏi và phát triển.

Ngoài kết hợp nhiều phương pháp và phong cách đọc Tarot để mang lại trải nghiệm phong phú và đa chiều cho khách hàng. Chuyên gia bói Tarot Hannie còn nhận xem bài Tây, Lenomand, Tealeaf, Bản Đồ Sao, Thần Số Học,... để đa dạng và nâng cao sự chính xác thông điệp mà vũ trụ gửi đến khách hàng', N'Hannie không chỉ là một người đọc Tarot xuất sắc mà còn là một người bạn đồng hành đáng tin cậy trong hành trình tìm kiếm ý nghĩa và sự thấu hiểu về cuộc sống. Nếu bạn đang cần tìm kiếm lời khuyên từ chuyên gia bói Tarot uy tín, hãy kết nối với Hannie qua trang Facebook cá nhân nhé!'),
    (N'TC MOONIE', N'Senior',N'https://www.facebook.com/profile.php?id=100087131240719','t2.jpg', N'180 Nguyễn Văn Linh, Thạc Gián, Thanh Khê, Đà Nẵng', '987654321', N'Tarot Reader Moonie TC là một trong những chuyên gia hàng đầu trong lĩnh vực bói Tarot và Tealeaf tại Việt Nam. Bắt đầu hành trình từ năm 2011, Moonie TC đã tích lũy được 13 năm kinh nghiệm trong việc cung cấp các dịch vụ dự đoán và tư vấn tâm linh.', N'Tarot Reader Moonie TC là một trong những chuyên gia hàng đầu trong lĩnh vực bói Tarot và Tealeaf tại Việt Nam. Bắt đầu hành trình từ năm 2011, Moonie TC đã tích lũy được 13 năm kinh nghiệm trong việc cung cấp các dịch vụ dự đoán và tư vấn tâm linh.', N'Moonie TC nổi bật với chuyên môn trong việc phân tích các vấn đề liên quan đến tình cảm, công việc, và tài chính. Chị cũng có khả năng tìm kiếm vật hoặc đồ bị mất, mang lại sự an tâm cho khách hàng trong việc giải quyết các vấn đề cá nhân và nghề nghiệp. 

Tarot Reader Moonie TC cung cấp dịch vụ bói bài qua các gói câu lẻ, gói vấn đề và gói trải bài. Điều này giúp khách hàng có thể lựa chọn dịch vụ phù hợp với nhu cầu của mình. Sự tỉ mỉ và chính xác trong từng chi tiết là một điểm mạnh nổi bật của Moonie TC. Mỗi lần đọc bài Tarot hay phân tích Bản đồ sao, Moonie TC đều dành thời gian chuẩn bị kỹ lưỡng, xem xét các yếu tố từ nhiều góc độ khác nhau để đảm bảo rằng mỗi thông điệp đưa ra đều rõ ràng và có giá trị. 

Ngoài ra, Moonie TC cũng rất thành thạo trong Thần số học, một lĩnh vực kết hợp giữa khoa học và nghệ thuật để giải mã ý nghĩa của những con số trong cuộc sống. Bằng cách phân tích các con số liên quan đến ngày sinh, tên tuổi và các yếu tố khác, Moonie TC có thể giúp bạn hiểu rõ hơn về bản thân, tìm ra mục tiêu cuộc sống và cách đạt được sự hài hòa.

Moonie TC sử dụng các phương pháp bói bài Tarot kết hợp với kỹ thuật Tealeaf để cung cấp cái nhìn sâu sắc và chính xác về các khía cạnh khác nhau của cuộc sống. Với sự nhạy bén và kỹ năng tinh tế, Moonie TC mang đến cho khách hàng những dự đoán rõ ràng và lời khuyên hữu ích để định hướng tương lai.', N'Để tìm hiểu thêm về dịch vụ của Moonie TC và nhận được sự tư vấn chuyên nghiệp, hãy truy cập trang Facebook của chị. Với sự am hiểu và kinh nghiệm dày dạn, Moonie TC là sự lựa chọn tin cậy cho những ai đang tìm kiếm sự hướng dẫn tâm linh chính xác và tận tâm.'),
	(N'YENNHI', N'Junior',N'https://www.facebook.com/profile.php?id=100087131240719','t3.jpg', N'180 Nguyễn Văn Linh, Thạc Gián, Thanh Khê, Đà Nẵng', '0123987456', N'Với nhiều năm kinh nghiệm trong lĩnh vực tâm linh, Tarot reader Yến Nhii là một trong những chuyên gia hàng đầu về bói bài bài Tarot. Yến Nhii đã giúp hàng ngàn người vượt qua khó khăn,đạt được sự cân bằng trong cuộc sống bằng những thông điệp từ những lá bài Tarot.', N'Với nhiều năm kinh nghiệm trong lĩnh vực tâm linh, Tarot reader Yến Nhii là một trong những chuyên gia hàng đầu về bói bài bài Tarot. Yến Nhii đã giúp hàng ngàn người vượt qua khó khăn,đạt được sự cân bằng trong cuộc sống. Những phản hồi tích cực và lời khen ngợi từ khách hàng chính là minh chứng rõ ràng cho tài năng và tâm huyết của Yến Nhii.', N'Tarot reader Yến Nhii nổi bật với khả năng phân tích chi tiết và sâu sắc về các khía cạnh khác nhau trong cuộc sống, ví dụ như tình cảm, công việc, và tài chính. Ngoài khả năng phân tích sâu sắc, chị còn có kỹ năng đặc biệt trong việc hỗ trợ tìm kiếm những vật dụng bị thất lạc, giúp khách hàng yên tâm khi giải quyết các khó khăn cá nhân và nghề nghiệp.

Là chuyên gia dày dạn kinh nghiệm trong lĩnh vực Tarot, Yến Nhii cung cấp đa dạng dịch vụ bói bài, từ tư vấn sự nghiệp như công việc hiện tại, cơ hội thăng tiến, đến các vấn đề phát triển bản thân, học tập và cả tình yêu. Điều này giúp khách hàng dễ dàng chọn lựa dịch vụ phù hợp với nhu cầu của mình.

Điểm mạnh của Thiên An nằm ở sự chú trọng đến từng chi tiết và tính chính xác trong các buổi trải bài. Mỗi lần thực hiện một lượt bói, chị đều chuẩn bị cẩn thận và đánh giá tình hình từ nhiều góc độ để đảm bảo mọi thông điệp đều rõ ràng và mang lại giá trị thiết thực cho khách hàng.

Ngoài phương pháp đọc Tarot, chuyên gia Yến Nhii còn nhận xem bài Tây, Lenormard để nâng cao sự đa dạng, cái nhìn đa chiều và khả năng chính xác của thông điệp vũ trụ muốn gửi gắm đến cho người xem.', N'Tarot reader Yến Nhii là một chuyên gia dày dạn kinh nghiệm và đáng tin cậy, mang đến cho khách hàng cái nhìn sâu sắc và chính xác về mọi khía cạnh của cuộc sống. Với sự nhạy cảm và kỹ năng đặc biệt, chị cung cấp những dự đoán rõ ràng và lời khuyên thiết thực giúp định hướng tương lai. Nếu bạn cần một người để chia sẻ và lắng nghe, Tarot reader Thiên An sẽ là lựa chọn tuyệt vời dành cho bạn.')